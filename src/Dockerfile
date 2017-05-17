FROM ubuntu:17.04
MAINTAINER Ilya Siganov <ilya.blan4@gmail.com>
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -yq update && apt-get install -qy --no-install-recommends lsb-release 

RUN echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections && \

    echo "deb http://archive.ubuntu.com/ubuntu/ $(lsb_release -sc) multiverse" | tee -a /etc/apt/sources.list && \
    echo "deb-src http://archive.ubuntu.com/ubuntu/ $(lsb_release -sc) multiverse" | tee -a /etc/apt/sources.list && \

    apt-get -yq update && \
    apt-get -y dist-upgrade && \

    apt-get install -qy --no-install-recommends \
      make unzip ttf-mscorefonts-installer \
      latexmk biber python-pygments gnuplot cm-super \
      texlive-xetex texlive-generic-extra texlive-fonts-recommended lmodern fonts-liberation texlive-bibtex-extra \
      texlive-lang-cyrillic texlive-latex-extra texlive-science texlive-pstricks && \

    apt-get purge -qy texlive-latex-base-doc texlive-latex-extra-doc texlive-pictures-doc texlive-pstricks-doc texlive-science-doc && \
    apt-get autoclean -qy && \
    apt-get autoremove -qy && \

    fc-cache -fv

COPY PSCyr.zip install.sh /tmp/
RUN bash /tmp/install.sh

WORKDIR /data
VOLUME ["data"]
