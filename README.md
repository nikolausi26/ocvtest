Hello,

Here's an example to illustrate the problem.

It's a small excerpt from a dartboard detection program...

The program uses a loop to compare the camera images against the previous image. 
As soon as the images differ significantly, the `getCorners` routine is called, 
which determines the corner points from the difference image.

The program runs indefinitely—the memory usage is constant—but once the routine is called 
(a dart appears on the dartboard), it takes a short time, and then the memory is consumed 
very quickly—even if no further dart appears on the dartboard and the routine isn't called again.
