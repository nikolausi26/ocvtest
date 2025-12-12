# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION ${CMAKE_VERSION}) # this file comes with cmake

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "/home/nik/dart/ocvtest/.dart_tool/hooks_runner/shared/dartcv4/build/0c894306e9/_deps/libopencv-src")
  file(MAKE_DIRECTORY "/home/nik/dart/ocvtest/.dart_tool/hooks_runner/shared/dartcv4/build/0c894306e9/_deps/libopencv-src")
endif()
file(MAKE_DIRECTORY
  "/home/nik/dart/ocvtest/.dart_tool/hooks_runner/shared/dartcv4/build/0c894306e9/_deps/libopencv-build"
  "/home/nik/dart/ocvtest/.dart_tool/hooks_runner/shared/dartcv4/build/0c894306e9/_deps/libopencv-subbuild/libopencv-populate-prefix"
  "/home/nik/dart/ocvtest/.dart_tool/hooks_runner/shared/dartcv4/build/0c894306e9/_deps/libopencv-subbuild/libopencv-populate-prefix/tmp"
  "/home/nik/dart/ocvtest/.dart_tool/hooks_runner/shared/dartcv4/build/0c894306e9/_deps/libopencv-subbuild/libopencv-populate-prefix/src/libopencv-populate-stamp"
  "/home/nik/dart/ocvtest/.dart_tool/hooks_runner/shared/dartcv4/build/0c894306e9/_deps/libopencv-subbuild/libopencv-populate-prefix/src"
  "/home/nik/dart/ocvtest/.dart_tool/hooks_runner/shared/dartcv4/build/0c894306e9/_deps/libopencv-subbuild/libopencv-populate-prefix/src/libopencv-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/nik/dart/ocvtest/.dart_tool/hooks_runner/shared/dartcv4/build/0c894306e9/_deps/libopencv-subbuild/libopencv-populate-prefix/src/libopencv-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/nik/dart/ocvtest/.dart_tool/hooks_runner/shared/dartcv4/build/0c894306e9/_deps/libopencv-subbuild/libopencv-populate-prefix/src/libopencv-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
