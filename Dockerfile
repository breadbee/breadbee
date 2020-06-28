FROM debian:sid
RUN apt-get -qq update
RUN apt-get -qq install python3-pip libmagickwand-dev kicad
RUN pip3 install pcbdraw
