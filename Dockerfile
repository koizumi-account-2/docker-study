FROM ubuntu:20.04

ENV hello="Hello World"
ENV hoge="HOGEHOGE"
ARG message
RUN echo $message > message.txt


CMD ["cat","message.txt"]