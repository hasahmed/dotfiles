FROM ubuntu:24.04

RUN apt-get update && apt-get install -y git iputils-ping curl sudo

RUN useradd -m app sudo
WORKDIR /home/app

RUN git clone https://github.com/hasahmed/dotfiles.git
RUN cd ./dotfiles
USER app
#RUN ./setup-zsh.sh
#RUN echo hello

