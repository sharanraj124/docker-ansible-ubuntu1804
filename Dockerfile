FROM ubuntu:18.04
LABEL maintainer="Saranraj"
USER root

# Install dependencies.

RUN apt-get update \
    && apt-get install -y software-properties-common \
       python3.6 \
    && apt-add-repository ppa:ansible/ansible \
    && apt-get update \
    && apt-get install -y ansible \
       python3-setuptools \
       python3-pip \
       openssh-client \
    && apt-get clean

# Install Ansible inventory file.
RUN mkdir -p /etc/ansible
RUN echo "[local]\nlocalhost ansible_connection=local" > /etc/ansible/hosts

VOLUME ["/sys/fs/cgroup", "/tmp", "/run"]
CMD ["/lib/systemd/systemd"]