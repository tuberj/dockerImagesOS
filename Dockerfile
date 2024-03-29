FROM nvidia/cuda:11.2.2-cudnn8-runtime-ubuntu20.04

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


# Install OpenJDK-18
RUN apt-get update && \
    apt-get install openjdk-11-jdk -y

RUN pip3 install bertopic
RUN pip3 install numpy==1.23
RUN pip3 install pandas==1.5.3
RUN pip3 install faiss-gpu==1.6.3 --no-cache
RUN pip3 install matplotlib
RUN pip3 install binpickle
RUN pip3 install --upgrade ir_datasets
 
RUN pip3 install python-terrier && pip3 install pyautocorpus && pip3 install pyterrier_pisa && pip3 install json-stream && pip3 install --upgrade git+https://github.com/terrierteam/pyterrier_adaptive.git
#RUN pip3 install torchvision 

RUN pip3 install --upgrade git+https://github.com/terrierteam/pyterrier_doc2query.git && pip3 install git+https://github.com/terrierteam/pyterrier_dr 
Run pip3 install --upgrade git+https://github.com/terrierteam/pyterrier_t5.git

ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64/
RUN export JAVA_HOM
RUN pip3 install -U pip setuptools wheel && pip3 install jupyter -U && pip3 install jupyterlab

