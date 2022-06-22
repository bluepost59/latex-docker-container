FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt upgrade -y
RUN apt install wget perl -y

# バージョンが古い（2019）
# RUN apt install -y emacs-nox git latexmk\
#     texlive-lang-cjk texlive-fonts-recommended texlive-fonts-extra xdvik-ja

# 最新版
RUN mkdir /downloads && cd /downloads && \
    wget https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz &&\
    zcat install-tl-unx.tar.gz | tar xf - && \
    cd install-tl-* && \
    perl ./install-tl --scheme=small --no-interaction 

# 課題
# PATH通す
# tlmgrで入れるもの（collection-langcjk, collection-langjapanese）

# Finally, prepend /usr/local/texlive/YYYY/bin/PLATFORM to your PATH,
# e.g., /usr/local/texlive/2022/bin/x86_64-linux 
