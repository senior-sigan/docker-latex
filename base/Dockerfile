FROM ubuntu:latest
MAINTAINER Ilya Siganov <ilya.blan4@gmail.com>
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -y update && \
    apt-get install -y software-properties-common python-software-properties unzip && \
    add-apt-repository -y multiverse && \
    apt-get -q update && \
    apt-get -y dist-upgrade && \
    apt-get install -qy latexmk biber ttf-mscorefonts-installer python-pygments gnuplot cm-super && \
    apt-get install -qy texlive-xetex texlive-generic-extra texlive-fonts-recommended texlive-lang-cyrillic texlive-latex-extra texlive-science && \
    apt-get purge -qy texlive-latex-base-doc texlive-latex-extra-doc texlive-pictures-doc texlive-pstricks-doc texlive-science-doc && \
    apt-get autoclean -qy && \
    apt-get autoremove -qy

RUN fc-cache -fv

WORKDIR /data
VOLUME ["data"]
