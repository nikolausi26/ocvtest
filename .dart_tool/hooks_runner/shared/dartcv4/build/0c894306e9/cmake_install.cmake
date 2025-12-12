# Install script for directory: /home/nik/.pub-cache/hosted/pub.dev/dartcv4-2.1.0+1/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/nik/dart/ocvtest/.dart_tool/hooks_runner/shared/dartcv4/build/0c894306e9/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/aarch64-linux-gnu-objdump")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/nik/dart/ocvtest/.dart_tool/hooks_runner/shared/dartcv4/build/0c894306e9/dartcv/cmake_install.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "header_files" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/nik/dart/ocvtest/.dart_tool/hooks_runner/shared/dartcv4/build/0c894306e9/install/include/dartcv")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/nik/dart/ocvtest/.dart_tool/hooks_runner/shared/dartcv4/build/0c894306e9/install/include" TYPE DIRECTORY FILES "/home/nik/.pub-cache/hosted/pub.dev/dartcv4-2.1.0+1/src/dartcv" FILES_MATCHING REGEX "/[^/]*\\.h$" REGEX "/t\\.h$" EXCLUDE REGEX "/test$" EXCLUDE REGEX "/build$" EXCLUDE)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "target_libs" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/nik/dart/ocvtest/.dart_tool/hooks_runner/shared/dartcv4/build/0c894306e9/install/lib/libdartcv.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/nik/dart/ocvtest/.dart_tool/hooks_runner/shared/dartcv4/build/0c894306e9/install/lib/libdartcv.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/nik/dart/ocvtest/.dart_tool/hooks_runner/shared/dartcv4/build/0c894306e9/install/lib/libdartcv.so"
         RPATH "$ORIGIN")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/nik/dart/ocvtest/.dart_tool/hooks_runner/shared/dartcv4/build/0c894306e9/install/lib/libdartcv.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/nik/dart/ocvtest/.dart_tool/hooks_runner/shared/dartcv4/build/0c894306e9/install/lib" TYPE SHARED_LIBRARY FILES "/home/nik/dart/ocvtest/.dart_tool/hooks_runner/shared/dartcv4/build/0c894306e9/dartcv/libdartcv.so")
  if(EXISTS "$ENV{DESTDIR}/home/nik/dart/ocvtest/.dart_tool/hooks_runner/shared/dartcv4/build/0c894306e9/install/lib/libdartcv.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/nik/dart/ocvtest/.dart_tool/hooks_runner/shared/dartcv4/build/0c894306e9/install/lib/libdartcv.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/nik/dart/ocvtest/.dart_tool/hooks_runner/shared/dartcv4/build/0c894306e9/install/lib/libdartcv.so"
         OLD_RPATH "\$ORIGIN:/home/nik/dart/ocvtest/.dart_tool/hooks_runner/shared/dartcv4/build/0c894306e9/_deps/libopencv-src/ffmpeg/lib:"
         NEW_RPATH "$ORIGIN")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/aarch64-linux-gnu-strip" "$ENV{DESTDIR}/home/nik/dart/ocvtest/.dart_tool/hooks_runner/shared/dartcv4/build/0c894306e9/install/lib/libdartcv.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "target_libs" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "target_libs" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/nik/dart/ocvtest/.dart_tool/hooks_runner/shared/dartcv4/build/0c894306e9/dartcv/CMakeFiles/dartcv.dir/install-cxx-module-bmi-Release.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "ffmpeg_libs" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/nik/dart/ocvtest/.dart_tool/hooks_runner/shared/dartcv4/build/0c894306e9/install/lib/libavcodec.so;/home/nik/dart/ocvtest/.dart_tool/hooks_runner/shared/dartcv4/build/0c894306e9/install/lib/libavformat.so;/home/nik/dart/ocvtest/.dart_tool/hooks_runner/shared/dartcv4/build/0c894306e9/install/lib/libavutil.so;/home/nik/dart/ocvtest/.dart_tool/hooks_runner/shared/dartcv4/build/0c894306e9/install/lib/libswscale.so;/home/nik/dart/ocvtest/.dart_tool/hooks_runner/shared/dartcv4/build/0c894306e9/install/lib/libavdevice.so;/home/nik/dart/ocvtest/.dart_tool/hooks_runner/shared/dartcv4/build/0c894306e9/install/lib/libavfilter.so;/home/nik/dart/ocvtest/.dart_tool/hooks_runner/shared/dartcv4/build/0c894306e9/install/lib/libswresample.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/nik/dart/ocvtest/.dart_tool/hooks_runner/shared/dartcv4/build/0c894306e9/install/lib" TYPE FILE FILES
    "/home/nik/dart/ocvtest/.dart_tool/hooks_runner/shared/dartcv4/build/0c894306e9/_deps/libopencv-src/ffmpeg/lib/libavcodec.so"
    "/home/nik/dart/ocvtest/.dart_tool/hooks_runner/shared/dartcv4/build/0c894306e9/_deps/libopencv-src/ffmpeg/lib/libavformat.so"
    "/home/nik/dart/ocvtest/.dart_tool/hooks_runner/shared/dartcv4/build/0c894306e9/_deps/libopencv-src/ffmpeg/lib/libavutil.so"
    "/home/nik/dart/ocvtest/.dart_tool/hooks_runner/shared/dartcv4/build/0c894306e9/_deps/libopencv-src/ffmpeg/lib/libswscale.so"
    "/home/nik/dart/ocvtest/.dart_tool/hooks_runner/shared/dartcv4/build/0c894306e9/_deps/libopencv-src/ffmpeg/lib/libavdevice.so"
    "/home/nik/dart/ocvtest/.dart_tool/hooks_runner/shared/dartcv4/build/0c894306e9/_deps/libopencv-src/ffmpeg/lib/libavfilter.so"
    "/home/nik/dart/ocvtest/.dart_tool/hooks_runner/shared/dartcv4/build/0c894306e9/_deps/libopencv-src/ffmpeg/lib/libswresample.so"
    )
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/home/nik/dart/ocvtest/.dart_tool/hooks_runner/shared/dartcv4/build/0c894306e9/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
if(CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_COMPONENT MATCHES "^[a-zA-Z0-9_.+-]+$")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
  else()
    string(MD5 CMAKE_INST_COMP_HASH "${CMAKE_INSTALL_COMPONENT}")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INST_COMP_HASH}.txt")
    unset(CMAKE_INST_COMP_HASH)
  endif()
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/home/nik/dart/ocvtest/.dart_tool/hooks_runner/shared/dartcv4/build/0c894306e9/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
