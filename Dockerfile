FROM ubuntu:20.04
RUN apt update
RUN apt-get install -y python3-pip
# deps for awscli
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y groff less
RUN pip3 install awscli
RUN useradd -m awscli --shell /bin/bash
USER awscli
