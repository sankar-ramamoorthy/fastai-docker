FROM ubuntu:18.04

# Install some basic utilities
RUN apt-get update && apt-get install -y \
    curl \
    ca-certificates \
    sudo \
    git \
    bzip2 \
    unzip \
    libx11-6 \
    software-properties-common \
    ffmpeg \
    frei0r-plugins \
    vim \
    p7zip-full \
    wget \
 && rm -rf /var/lib/apt/lists/*

# Create a working directory

RUN mkdir /app
WORKDIR /app
RUN chsh -s /bin/bash

# Create a non-root user and switch to it

RUN adduser --disabled-password --gecos '' --shell /bin/bash user \
 && chown -R user:user /app

RUN echo "user ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/90-user
USER user

# All users can use /home/user as their home directory

ENV HOME=/home/user
ENV SHELL=/bin/bash
SHELL ["/bin/bash", "--login", "-c"]

RUN chmod 777 /home/user

# Install Miniconda
RUN curl -so ~/miniconda.sh https://repo.continuum.io/miniconda/Miniconda3-4.5.11-Linux-x86_64.sh \
 && chmod +x ~/miniconda.sh \
 && ~/miniconda.sh -b -p ~/miniconda \
 && rm ~/miniconda.sh

ENV PATH=/home/user/miniconda/bin:$PATH
ENV CONDA_AUTO_UPDATE_CONDA=false

RUN conda install -y -c pytorch pytorch-cpu torchvision-cpu \
 && conda install -y -c fastai fastai \
 && conda install -y flask \
 && conda install -y jupyter \
 && conda clean -ya

WORKDIR /home/user/
RUN mkdir .jupyter
COPY jupyter_notebook_config.py .jupyter/jupyter_notebook_config.py

EXPOSE 8888
ENTRYPOINT ["jupyter", "notebook","--ip=0.0.0.0","--allow-root"]

