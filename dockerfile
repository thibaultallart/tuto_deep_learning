# Base image
FROM ubuntu:18.04


# Install some package
RUN apt-get -qq -y update && apt-get -y install python3 \
                                                python3-dev \
                                                python3-pip \
                                                wget \ 
                                                curl \
                                                git \
                                                make \
                                                vim \
                                                tar \
                                                gcc \
                                                zlib1g-dev libjpeg-dev cmake swig python-pyglet python3-opengl \
                                                libboost-all-dev libsdl2-dev \
                                                libosmesa6-dev patchelf ffmpeg xvfb

COPY requirements.txt /tmp/requirements.txt

RUN pip3 install --upgrade pip
RUN pip3 install -r /tmp/requirements.txt

RUN pip3 install -e "git+https://github.com/openai/gym.git#egg=all"

RUN git clone https://github.com/fchollet/deep-learning-with-python-notebooks.git

RUN git clone https://github.com/criteo-research/paiss_deeprl.git