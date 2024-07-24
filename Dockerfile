# FROM python:3.9-slim-bookworm
FROM jupyter/datascience-notebook:python-3.9.13

LABEL version="0.0.1-alpha"
LABEL image-desc="A docker image for running custom jupyterhub compute environments"

WORKDIR /

RUN conda install -c conda-forge nb_conda_kernels ipykernel
