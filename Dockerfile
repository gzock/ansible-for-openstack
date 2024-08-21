FROM python:3.12-alpine

RUN apk add curl gcc openssl-dev musl-dev libffi-dev g++

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
RUN source /root/.cargo/env
ENV PATH $PATH:/root/.cargo/bin

RUN pip3 install --upgrade pip
RUN pip3 install ansible openstacksdk openstackclient

RUN ansible-galaxy collection install openstack.cloud

ENTRYPOINT ansible