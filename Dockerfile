# デフォルトでmakeを実行する
# docker run時にコマンドを指定すればそれを実行する
FROM centos:6

WORKDIR /usr/src/myapp
CMD ["make"]
