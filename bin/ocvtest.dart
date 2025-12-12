// ignore_for_file: dead_code

import 'package:dartcv4/dartcv.dart';

class VideoStream {
  int src = 0;
  int width = 640;
  int height = 480;

  bool stopped = false;
  var frame = (true, Mat.create());

  late VideoCapture stream;

  VideoStream(this.src) {
    initStream(src);
  }

  initStream(int src) {
    stream = VideoCapture.fromDevice(src);
    width = stream.get(CAP_PROP_FRAME_WIDTH).toInt();
    height = stream.get(CAP_PROP_FRAME_HEIGHT).toInt();
    print("$src: $width $height");
    update();
  }

  void update() async {
    while (!stopped) {
      frame = stream.read();
      await Future.delayed(Duration(microseconds: 1));
    }
  }

  void stop() {
    stopped = true;
    stream.release();
  }

  (bool, Mat) read() {
    return (frame);
  }
}

List<VideoStream> streams = [];

void main(List<String> arguments) {
  streams.add(VideoStream(0));
  /*   streams.add(VideoStream(2));
  streams.add(VideoStream(4)); */

  for (int i = 0; i < streams.length; i++) {
    dartReader(streams[i]);
  }
  print('Waiting for threads...');
}

Mat getThreshold(Mat img1, Mat img2) {
  Mat dimg = absDiff(img2, img1);
  Mat blur = gaussianBlur(dimg, (5, 5), 0.0);
  blur = bilateralFilter(blur, 9, 75, 75);
  var (double d, Mat thresh) = threshold(blur, 50, 255, 0);
  return thresh;
}

List<Point> getCorners(Mat img) {
  var edges = goodFeaturesToTrack(img, 640, 0.0008, 1.0, k: 0.02);

  List<Point> corners = [];

  var it = edges.iterator;
  while (it.moveNext()) {
    corners.add(Point((it.current.x).toInt(), (it.current.y).toInt()));
  }

  edges.dispose();

  return corners;
}

void dartReader(VideoStream stream) async {
  bool success = false;
  Mat img;
  Mat newN;
  Mat imgG;
  Mat newNG;

  (success, img) = stream.read();

  imgG = img;
  if (success) {
    imgG = cvtColor(img, COLOR_RGB2GRAY);
  }

  while (true) {
    int cntDiff = 0;
    Mat diff;

    (success, newN) = stream.read();
    newNG = cvtColor(newN, COLOR_RGB2GRAY);

    diff = getThreshold(newNG, imgG);
    cntDiff = countNonZero(diff);

    if (cntDiff > 125 && cntDiff < 5000) {
      var corners = getCorners(diff);

      print('DartReader ${stream.src}: ok - corners: ${corners.length}');
    }

    await Future.delayed(Duration(milliseconds: 500));
    imgG = await newNG.cloneAsync();
    newNG.dispose();
  }
}
