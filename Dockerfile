FROM ubuntu:22.04

ADD . /playbook
WORKDIR /playbook

RUN apt update && apt install -y nano software-properties-common
RUN add-apt-repository --yes --update ppa:ansible/ansible
RUN apt install ansible --yes
RUN ansible-galaxy collection install ansible.windows

#docker build . -t ansibleapp