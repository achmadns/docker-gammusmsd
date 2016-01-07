FROM ubuntu:14.04

MAINTAINER Achmad NS <achmad.dev@gmail.com>

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get clean \
	&& apt-get install -y --no-install-recommends software-properties-common \
	&& apt-get update \
	&& apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 80E7349A06ED541C \
	&& add-apt-repository ppa:nijel/ppa \
	&& apt-get update \
	&& apt-get install -y gammu gammu-smsd gammu-doc python-gammu python-gammu-dbg python-gammu-doc libgammu-dev libgammu-dbg libgammu-i18n libgammu7

ADD etc/* /etc/

RUN chmod +x /etc/init-modem.sh