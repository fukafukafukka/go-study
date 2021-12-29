FROM golang:latest

WORKDIR /Users/fuka/Training/go_study_space

RUN apt-get update
RUN apt-get install -y \
vim \
locales

RUN locale-gen ja_JP.UTF-8
RUN localedef -f UTF-8 -i ja_JP ja_JP
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8

# 実行コマンド
# docker build -t go-study .
# docker run --name go-study -v /Users/fuka/Training/go_study_space:/Users/fuka/Training/go_study_space -it -d go-study /bin/bash
# docker exec -it go-study /bin/bash