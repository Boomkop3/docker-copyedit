FROM debian
RUN apt-get -y update
RUN apt-get -y install docker.io python3 
VOLUME /var/run/docker.sock
copy ./ /copyedit
WORKDIR /copyedit
ENTRYPOINT ["python3", "docker-copyedit.py"]
