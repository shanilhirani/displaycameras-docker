# Docker DisplayCameras

This repo contains Docker code which I've forked from https://github.com/Jugganourt to containerize the [DisplayCameras](https://github.com/Anonymousdog/displaycameras) (repo written by Anonymousdog) and
 with a modifed version of the repo where you can add a "skip" argument to remove any user interactions (reuqired to build the docker image).

## Files

### DockerFile (Dockerfile)

The file used to create the docker image. One of the calls uses a modifed repo of [Anonymousdog's
displaycameras](https://github.com/Anonymousdog/displaycameras); the modifications made can be found at the bottom of the file or seen on my [Forked Copy](https://github.com/Jugganourt/displaycameras)

Dockerfile has been modified to use Jugganourt container image as a source. 
 If you are just after his Docker container you can find the working image [here](https://hub.docker.com/repository/docker/jugganourt/displaycameras/general) which contains the insturctions on how to run it.

### Docker Compose (docker-compose.yaml)

Easy to read and manage compose file to deploy Displaycameras without docker run commands. 

#### Notable Changes since fork

I prefer to copy configuration for the display cameras as part of build runtime therefore no need precreate anything on the docker host as eveything can be housed in this repo and managed through a simple git clone and version control :thumbsup:

## Special thanks

1. Unmodifed displaycameras repo was created by Anonymousdog (https://github.com/Anonymousdog/displaycameras).
2. The original docker implmenation was created by Jugganourt and his modifications (see below) (https://github.com/Jugganourt).

#### Jugganourt Modifications

The modifications I have made allows the user to provide a `skip` flag to the `install.sh`, for example:

```bash
./install.sh skip
```

This will run the install script with no user input required.
