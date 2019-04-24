FROM continuumio/miniconda3
MAINTAINER Otakbeku <iceramngl@gmail.com>
RUN ["/bin/bash", "-c", "conda create -n imgcv python=3.6"]
RUN ["/bin/bash", "-c", "echo 'Source activate imgcv' > ~/.bashrc"]
RUN apt-get update \
	&& apt-get install -y \
		build-essential \
		cmake \
		git \
		wget \
		unzip \
		yasm \
		pkg-config \
		libswscale-dev \
		libtbb2 \
		libtbb-dev \
		libpng-dev \
		libtiff-dev \
		libavformat-dev \
		libpq-dev \

ENV PATH /opt/conda/envs/env/bin:$PATH
RUN ["/bin/bash", "-c", "source activate imgcv && pip install -r requirement.txt"]

