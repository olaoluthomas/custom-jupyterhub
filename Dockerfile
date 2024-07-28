FROM quay.io/jupyter/datascience-notebook:x86_64-ubuntu-22.04

ARG env_name=py_39
ARG py_ver=3.9.16

USER root
RUN conda install -c conda-forge nb_conda_kernels ipykernel

USER ${NB_UID}
WORKDIR ${HOME}
COPY ./.condarc ${HOME}

RUN conda create -y -n ${env_name} python=${py_ver} jupyterlab ipykernel

WORKDIR ${HOME}
