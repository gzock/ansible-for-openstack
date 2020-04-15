from python:3.6-alpine

RUN apk add gcc openssl-dev musl-dev libffi-dev g++
RUN pip3 install ansible openstacksdk openstackclient
