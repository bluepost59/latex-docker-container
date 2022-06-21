FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt upgrade -y
RUN apt install -y emacs-nox git\
    texlive-lang-cjk texlive-fonts-recommended texlive-fonts-extra xdvik-ja