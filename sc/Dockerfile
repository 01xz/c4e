FROM centos:centos7

ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_UID

RUN yum -y update \
    && yum -y groupinstall "X Window System" \
    && yum -y install sudo perl csh libXScrnSaver compat-libtiff3 libmng libpng12 \
    && yum clean all \
    && groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME \
    && echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME

USER $USERNAME

ENTRYPOINT [ "/bin/bash" ]
