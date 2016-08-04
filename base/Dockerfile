FROM ubuntu:latest
MAINTAINER Ilya Siganov <ilya.blan4@gmail.com>
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -y update && \
    apt-get install -y --no-install-recommends \
      software-properties-common python-software-properties unzip && \
    add-apt-repository -y multiverse && \
    apt-get -q update && \
    apt-get -y dist-upgrade

RUN apt-get install -qy --no-install-recommends \
      latexmk biber python-pygments gnuplot cm-super \
      texlive-xetex texlive-generic-extra texlive-fonts-recommended lmodern fonts-liberation texlive-bibtex-extra \
      texlive-lang-cyrillic texlive-latex-extra texlive-science texlive-pstricks && \
    apt-get purge -qy texlive-latex-base-doc texlive-latex-extra-doc texlive-pictures-doc texlive-pstricks-doc texlive-science-doc && \
    apt-get autoclean -qy && \
    apt-get autoremove -qy

RUN echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula \
    select true | debconf-set-selections && \
    apt-get install -qy --no-install-recommends ttf-mscorefonts-installer && \
    fc-cache -fv

WORKDIR /data
VOLUME ["data"]
