FROM sigan/latex:base
MAINTAINER Ilya Siganov <ilya.blan4@gmail.com>
ENV DEBIAN_FRONTEND noninteractive

ADD ./PSCyr.zip /tmp/PSCyr.zip
ADD ./install.sh /tmp/install.sh
RUN bash /tmp/install.sh
