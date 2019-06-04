# r-playground
A scratchpad for R

# Table of Contents

- [Overview](#Overview)
- [Requirements](#requirements)
- [Build](#build)
- [Run](#run)

# Overview
I really don't want to install RStudio.

This will build a super large container that can execute R scripts. 

# Requirements
* Docker CE 19.03.0-beta3

# Build
Add packages to `requirements.r` and execute `./build.sh <tag>` to create a docker image with the name `r-play:<tag>`

# Run
`docker run --rm -v $PWD/<sub_dir>:/app r-play:<tag> bash -c "Rscript /app/hello.r"`

# Example
```
./build.sh local
docker run --rm -v $PWD/hello_world:/app r-play:local bash -c "Rscript /app/hello.r"
[1] "Hello World"
```
