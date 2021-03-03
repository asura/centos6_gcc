# CentOS6 GCC

* CentOS6で動作するバイナリをビルドするための環境

## devtoolset-9

* SCLのdevtoolset-9をenabledにした環境
* タグ名: `centos6_gcc:devtoolset-9`

```
$ cd devtoolset-9
$ make
# => イメージ作成

$ docker run -it -v $PWD:/usr/src/myapp --rm centos6_gcc:devtoolset-9 gcc --version
gcc (GCC) 9.1.1 20190605 (Red Hat 9.1.1-2)
Copyright (C) 2019 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

$ docker run -it -v $PWD:/usr/src/myapp --rm centos6_gcc:devtoolset-9 cmake --version
cmake version 3.19.6

CMake suite maintained and supported by Kitware (kitware.com/cmake).
```
