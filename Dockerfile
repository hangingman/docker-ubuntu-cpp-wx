FROM ubuntu:focal-20220113

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y
RUN apt-get install -y gcc g++ cmake ninja-build libwxbase3.0-dev libwxgtk3.0-gtk3-dev libwxsqlite3-3.0-dev
