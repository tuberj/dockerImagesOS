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
    locales
RUN pip3 install python-terrier && pip3 install -q git+https://github.com/terrierteam/pyterrier_colbert.git && pip3 install faiss-gpu


RUN pip3 install -U pip setuptools wheel && pip3 install jupyter -U && pip3 install jupyterlab
