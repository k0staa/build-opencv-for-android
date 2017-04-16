# Build-opencv-for-android

An interactive script to download and build opencv and opencv_contrib for android

##Changes From Original Project
I removed part of setup.sh script responsible for downloading Android-ndk because its quite big actually. 
I also changed part wich checkout to branch 3.1.0. I failed to compile library in version 3.1.0 and checkout to last revision (master).

### Requirements
 - Python >=2.4
 - CMake >=2.8

### Installation
```sh
$ git clone https://github.com/tzutalin/build-opencv-for-android.git
$ cd build-opencv-for-android
$ ./setup.sh 3.1.0
```
By default, it will download opencv and opencv_contrib.

Please export android NDK path like these:

`$ export [ANDROID_NDK_PATH]`

Build it

```sh
$ ./build-android-opencv.sh
```

The final library will be located in android_lib folder

### Liecnese
This rpoject was forked from [THESE] (https://github.com/tzutalin/build-opencv-for-android) orginal project created by Tzu TaLin. Please check his repo and read license provided by him:
 
Copyright (c) 2016 Tzutalin
Create by TzuTaLin <tzu.ta.lin@gmail.com>

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
