FROM ubuntu:24.04

RUN apt-get update && apt-get install -y git iputils-ping curl sudo zsh

RUN useradd -m app
RUN echo 'app:abc' | chpasswd
RUN adduser app sudo
WORKDIR /home/app

RUN git clone https://github.com/hasahmed/dotfiles.git
RUN cd ./dotfiles
USER app
#RUN ./setup-zsh.sh
#RUN echo hello

