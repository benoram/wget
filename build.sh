# Docker benoram/wget

A container for running wget anywhere that supports Docker Linux containers. Updated monthly.

WORKDIR is /data, so if you want to download a file to disk, map a volume appropriately.

ex:

```sh
docker run --rm -v $(pwd):/data benoram/wget https://google.com -O google.html
```

## Prereqs

A docker environment on your local machine. For Mac users, Docker Desktop or Rancher Desktop work. For Rancher desktop, you will need to be running the "dockerd (moby)" container runtime.

## Simplify execution with an alias

Add an alias to your .bashrc or .zshrc file. This will allow you to run wget without needing to remember the full docker command.

When using this alias, your current directory and relative subdirectories will be mounted to allow file access.

Add the following line to your .bashrc or .zshrc file

```sh
alias wget="docker run --rm -v $(pwd):/data benoram/wget"
```
