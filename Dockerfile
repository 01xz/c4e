ARG IMAGE="centos:centos7"

FROM ${IMAGE} AS base

RUN yum -y update

FROM base AS c4e

RUN yum -y groupinstall "X Window System" \
    && yum -y install perl tcsh libXScrnSaver compat-libtiff3 libmng libpng12 \
    ksh glibc.i686 glibc-devel libXext.i686 libXtst.i686 expat.i686 libGLU libXp redhat-lsb-core \
    libXt.i686 libXp.i686 java-1.8.0-openjdk python python3

FROM c4e AS c4e-dev

ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_UID

RUN yum -y install sudo \
    && yum clean all \
    && groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME -s /bin/bash \
    && echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME

USER $USERNAME

ENTRYPOINT [ "/bin/bash" ]
