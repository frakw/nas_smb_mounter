#!/bin/bash

source $(pwd)/nas.conf

# 獲取當前用戶的 UID 和 GID
USER_UID=$(id -u)
USER_GID=$(id -g)

# 檢查並建立掛載目錄
sudo mkdir -p ${MOUNT_POINT}/${NAS_NAME}/${NAS_SMB_1}
sudo mkdir -p ${MOUNT_POINT}/${NAS_NAME}/${NAS_SMB_2}
sudo mkdir -p ${MOUNT_POINT}/${NAS_NAME}/${NAS_SMB_3}

# 掛載指令
sudo mount -t cifs -o rw,vers=3.0,credentials=$(pwd)/.smbcredentials,uid=${USER_UID},gid=${USER_GID},file_mode=0777,dir_mode=0777 //${NAS_IP}/${NAS_SMB_1} ${MOUNT_POINT}/${NAS_NAME}/${NAS_SMB_1}
sudo mount -t cifs -o rw,vers=3.0,credentials=$(pwd)/.smbcredentials,uid=${USER_UID},gid=${USER_GID},file_mode=0777,dir_mode=0777 //${NAS_IP}/${NAS_SMB_2} ${MOUNT_POINT}/${NAS_NAME}/${NAS_SMB_2}
sudo mount -t cifs -o rw,vers=3.0,credentials=$(pwd)/.smbcredentials,uid=${USER_UID},gid=${USER_GID},file_mode=0777,dir_mode=0777 //${NAS_IP}/${NAS_SMB_3} ${MOUNT_POINT}/${NAS_NAME}/${NAS_SMB_3}
