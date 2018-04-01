FROM ubuntu:17.04
MAINTAINER Ilya Siganov <ilya.blan4@gmail.com>
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -yq update && apt-get install -qy --no-install-recommends lsb-release 

RUN echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections && \

    apt-get install -qy --no-install-recommends \
      make unzip curl ttf-mscorefonts-installer \
      latexmk biber python-pygments gnuplot cm-super \
      texlive-xetex texlive-generic-extra texlive-fonts-recommended lmodern fonts-liberation texlive-bibtex-extra \
      texlive-lang-cyrillic texlive-latex-extra texlive-science texlive-pstricks texlive-publishers && \

    apt-get purge -qy texlive-latex-base-doc texlive-latex-extra-doc texlive-pictures-doc texlive-pstricks-doc texlive-science-doc && \
    apt-get autoclean -qy && \
    apt-get autoremove -qy && \

    fc-cache -fv && \

    wget && \
    xzdec

COPY PSCyr.zip install.sh /tmp/
RUN bash /tmp/install.sh

RUN tlmgr init-usertree && tlmgr install impnattypo

WORKDIR /data
VOLUME ["data"]
