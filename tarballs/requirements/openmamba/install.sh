!#/bin/bash

# check if we are on openmamba
if [ ! -f /etc/openmamba-release ]; then
    echo "This script is only for OpenSUSE"
    exit
fi


# check if we are root
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

dnf install -y \
    bash-completion \
    cryptsetup \
    curl \
    device-mapper \
    dmraid \
    dosfstools \
    dracut \
    fuse \
    git \
    jq \
    lvm2 \
    nvme-cli \
    parted \
    rsync \
    sshfs \
    wget \
    xdg-user-dirs \
    xorriso \
    zstd