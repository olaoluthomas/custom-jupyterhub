FROM python:3.9.16

LABEL version="0.0.1-alpha"
LABEL image-desc="A docker image for running custom jupyterhub compute environments"

WORKDIR /
COPY ./requirements.txt ./

# SHELL ["/bin/bash", "--login", "c"]
RUN pip install -r ./requirements.txt
