FROM quay.io/jupyter/datascience-notebook:ubuntu-22.04

RUN mamba install -c conda-forge nb_conda_kernels ipykernel
