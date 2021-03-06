FROM debian:stretch
MAINTAINER Adrien Waksberg "docker@yae.im"

RUN apt update
RUN apt dist-upgrade -y

RUN apt install -y procps gnupg1 curl git
RUN ln -snvf /usr/bin/gpg1 /usr/bin/gpg
RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
RUN curl -sSL https://get.rvm.io | bash -s stable
RUN echo 'source "/usr/local/rvm/scripts/rvm"' >> /etc/bash.bashrc

RUN /bin/bash -l -c "rvm install 2.4.2"
RUN /bin/bash -l -c "rvm install 2.3.5"
RUN /bin/bash -l -c "rvm install 2.2.8"
RUN /bin/bash -l -c "rvm install 2.1.10"
