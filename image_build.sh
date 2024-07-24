IMG="simeonthomas/jupyterhub:0.0.1-alpha"
docker build -t $IMG .
docker push $IMG
