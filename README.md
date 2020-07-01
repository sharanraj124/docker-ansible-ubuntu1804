# Ubuntu 18.04 LTS Ansible Test Image Build with Docker

### Ubuntu 18.04 LTS Ansible Test Image Build with Docker

## Build And Run Dockerfile:

The dockerfile is install ansible wihth ubuntu 18.04. We can use this repository first build the docker image.

```bash
docker build -t docker-ansible-ubuntu1804

```
Now you can use your docker images and run using below command.

```bash
docker run -it docker-ansible-ubuntu1804 bash
```

## Pull from docker hub:

We can pull the image from docker hub using below line of command

```bash
docker pull omrsaran/docker-ansible-ubuntu1804:latest
```