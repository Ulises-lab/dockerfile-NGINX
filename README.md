# Dockerfile


## Dockerfile, install NGINX in a container with centos or debian


[![Static Badge](https://img.shields.io/badge/NGINX-009639&logo=nginx)](#)[![Static Badge](https://img.shields.io/badge/Centos-262577?logo=centos)](#)[![Static Badge](https://img.shields.io/badge/Debian-A81D33&logo=debian)](#)
---
In this section, you can find two files, one is to create a container centos with nginx and another is to create a container debian:buster with nginx. 


NGINX in bouth dockerfiles is the version 1.14.0. 


## Debian


There was a problem with the container debian when the command **./configure** ran because the gcc on debian wasn't correct version for that nginx so it was necessary to change different files with extension **.c** but you have to copy the directory *http* which has all that files...



I hope that will be useful for you.

