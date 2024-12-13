#!/bin/bash

# Change to the directory where the script is located
cd "$(dirname "$0")"

source $(pwd)/nas.conf

sudo umount ${MOUNT_POINT}/${NAS_NAME}/${NAS_SMB_1}
sudo umount ${MOUNT_POINT}/${NAS_NAME}/${NAS_SMB_2}
sudo umount ${MOUNT_POINT}/${NAS_NAME}/${NAS_SMB_3}