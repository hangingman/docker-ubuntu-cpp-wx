FROM ubuntu:focal-20220113

ENV DEBIAN_FRONTEND noninteractive

# https://docs.codelite.org/wxWidgets/repo316/

RUN rm -rf /var/lib/apt/lists/*
RUN apt-get update -y
RUN apt install -y software-properties-common

RUN apt-key adv --fetch-keys https://repos.codelite.org/CodeLite.asc
RUN apt-add-repository 'deb https://repos.codelite.org/wx3.1.6/ubuntu/ focal universe'
RUN apt-get update -y
RUN apt-get install -y gcc g++ cmake ninja-build libwxbase3.1unofficial-dev libwxgtk3.1unofficial-dev libwxsqlite3-3.0-dev libwxgtk-webview3.1unofficial-dev
