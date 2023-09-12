# Docker DisplayCameras

This repository contains Docker code which I've forked from [Jugganourt's displaycameras-docker](https://github.com/Jugganourt/displaycameras-docker) which containerizised the [displaycameras](https://github.com/Anonymousdog/displaycameras) (repository written by Anonymousdog).

## Notable Changes

- Dockerfile uses my own fork of [Jugganourt](https://github.com/Jugganourt/displaycameras) in case of future updates being needed.
- Added `displaycameras\displaycameras.conf` and `displaycameras\layout.conf.default` within app/repository code as I prefer to `COPY` these at build runtime.
- Docker Compose using Named Volumes and Networking

### Dockerfile

The file used to create the docker image. One of the calls uses a modifed repository of [Anonymousdog's displaycameras](https://github.com/Anonymousdog/displaycameras) which implements a `no-op` install by [Jugganourts' forked copy](https://github.com/Jugganourt/displaycameras)

Dockerfile has been modified to use `Jugganourt` container image as a source. If you are just after his Docker container you can find the working image [here](https://hub.docker.com/repository/docker/jugganourt/displaycameras/general) which contains the insturctions on how to run it.

I **WILL NOT** be publishing a new public image as the existing works out of the box.

### Docker Compose

Easy to read and manage compose file to deploy Displaycameras without docker run commands.

## Special Thanks

1. Unmodifed displaycameras repository was created by [Anonymousdog](https://github.com/Anonymousdog/displaycameras).
2. The original docker implmenation was created by `Jugganourt` and his modifications to  [displaycameras](https://github.com/Jugganourt/displaycameras) & [displaycameras Docker](https://github.com/Jugganourt/displaycameras-docker).
