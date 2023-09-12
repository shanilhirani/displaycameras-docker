FROM jugganourt/displaycameras:1.0.0

LABEL description="displaycameras-docker"
LABEL version="1.0.0"
LABEL maintainer="shanilhirani"

WORKDIR /home
USER root
RUN rm -rf /home/displaycameras-master
RUN wget -q https://github.com/shanilhirani/displaycameras/archive/refs/heads/master.zip && \
     unzip master.zip

WORKDIR /home/displaycameras-master
RUN chmod +x install.sh && \
     ./install.sh -r N -g ""
COPY --chown=root:root --chmod=0644 displaycameras/ /etc/displaycameras

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
