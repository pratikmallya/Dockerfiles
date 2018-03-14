[![Build Status](https://travis-ci.org/pratikmallya/Dockerfiles.svg?branch=master)](https://travis-ci.org/pratikmallya/Dockerfiles)
# Dockerfiles

Collection of Dockerfiles that do useful things.

Too lazy to build? Just pull from [docker hub](https://hub.docker.com/r/pratikmallya). All Dockerfiles are built and uploaded on merge to master.

### Dockerfile.kubectl
Ubuntu image with kubectl binary installed

### Dockerfile.privileged
Alpine image to access hosts on a kubernetes node

### Dockerfile.crond
Minimal image with crond binary to run as an isolated container.
You will need to mount a volume at `/opt/crond` to get persistent data and
logs.
