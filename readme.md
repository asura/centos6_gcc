# CentOS6 GCC

```
$ docker build -t centos6_gcc .

$ docker run -v $PWD:/usr/src/myapp --rm centos6_gcc       # make を実行する
$ docker run -v $PWD:/usr/src/myapp --rm centos6_gcc ls -a # ls -a を実行する
```
