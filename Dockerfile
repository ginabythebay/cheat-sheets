
# From https://github.com/fbenz/docker-pdflatex/blob/master/Dockerfile

FROM ubuntu:15.04

MAINTAINER Gina White

RUN apt-get update && \
    apt-get upgrade -y

RUN apt-get install -y --no-install-recommends texlive-latex-recommended texlive-latex-extra texlive-fonts-recommended texlive-fonts-extra texlive-lang-all

WORKDIR /home/build

CMD /home/build/incontainer.bash
