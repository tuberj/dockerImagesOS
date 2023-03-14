FROM nvidia/cuda:11.2.0-cudnn8-runtime-ubuntu20.04

RUN apt-get update && DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata


RUN apt-get update && apt-get install -y --no-install-recommends \
    wget \
    ca-certificates \
    build-essential \
    curl \ 
    zip unzip\
    openjdk-8-jre \
    git-lfs \
    vim \
    software-properties-common \
    locales \
    python3-pip \ 
    python3-dev

RUN pip3 install -U pip setuptools wheel && pip3 install jupyter -U && pip3 install jupyterlab
# Install OpenJDK-18
RUN apt-get update && \
    apt-get install openjdk-11-jdk -y

RUN pip3 install bertopic
 
RUN pip3 install python-terrier && pip3 install pyautocorpus && pip3 install pyterrier_pisa && pip3 install json-stream && pip3 install --upgrade git+https://github.com/terrierteam/pyterrier_adaptive.git
RUN pip3 install torchvision 
ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64/
RUN export JAVA_HOM
RUN pip3 install -U pip setuptools wheel && pip3 install jupyter -U && pip3 install jupyterlab

