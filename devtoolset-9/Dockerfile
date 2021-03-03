FROM centos:6

RUN sed -i \
    -e "s/^mirrorlist/#mirrorlist/g" \
    -e "s/^#baseurl/baseurl/g" \
    -e "s/mirror.centos.org/vault.centos.org/g" \
    /etc/yum.repos.d/CentOS-Base.repo

RUN yum install -y \
    centos-release-scl

RUN sed -i \
    -e "s/^mirrorlist/#mirrorlist/g" \
    -e "s/^#baseurl/baseurl/g" \
    -e "s/mirror.centos.org/vault.centos.org/g" \
    /etc/yum.repos.d/CentOS-SCLo-scl-rh.repo

RUN sed -i \
    -e "s/^mirrorlist/#mirrorlist/g" \
    -e "s/^# baseurl/baseurl/g" \
    -e "s/mirror.centos.org/vault.centos.org/g" \
    /etc/yum.repos.d/CentOS-SCLo-scl.repo

RUN yum install -y \
    devtoolset-9-gcc-c++ \
    devtoolset-9-libstdc++-devel \
    devtoolset-9-libtsan-devel \
    devtoolset-9-libubsan-devel \
    && rm -rf /var/cache/yum/* \
    && yum clean all

RUN curl -L https://github.com/Kitware/CMake/releases/download/v3.19.6/cmake-3.19.6-Linux-x86_64.sh -o cmake.sh \
    && sh cmake.sh --prefix=/usr/local --skip-license \
    && rm -f cmake.sh

WORKDIR /usr/src/myapp

# SCLを有効にした状態でコマンドを実行させる
COPY entrypoint.sh /usr/bin/entrypoint.sh
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT [ "/usr/bin/entrypoint.sh" ]
