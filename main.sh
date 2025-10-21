#!/usr/bin/env bash

#set -xeu

echo "########################"
echo "########################"
echo "### DEBIAN DEVELOPER ###"
echo "########################"
echo "########################"

EXECUTION_PATH="$(realpath "${0}")"
EXECUTION_PATH="$(dirname "${EXECUTION_PATH}")"
USER="dev"
HOME_USER="/home/${USER}"
INSTALL_DIR="${HOME_USER}/.local/bin"
TMP_DIR="/tmp/debian-developer"
SYSTEM_FONT_LOCATION=/usr/local/share/fonts

FONT_VERSION="3.4.0"
NVIM_VERSION="0.11.3"
ASDF_VERSION="0.18.0"

ASDF_URL="https://github.com/asdf-vm/asdf/releases/download/v${ASDF_VERSION}/asdf-v${ASDF_VERSION}-linux-amd64.tar.gz"
FONT_URL="https://github.com/ryanoasis/nerd-fonts/releases/download/v${FONT_VERSION}/JetBrainsMono.zip"
NVIM_URL="https://github.com/neovim/neovim/releases/download/v${NVIM_VERSION}/nvim-linux-x86_64.tar.gz"

PROFILES_FOLDER="/etc/profile.d"
SUDOERS_FOLDER="/etc/sudoers.d"

mkdir -p "${INSTALL_DIR}"
mkdir -p "${TMP_DIR}"

source ${EXECUTION_PATH}/apt-packages.sh
source ${EXECUTION_PATH}/neovim.sh
source ${EXECUTION_PATH}/asdf.sh
source ${EXECUTION_PATH}/dotfiles.sh
source ${EXECUTION_PATH}/profiles.sh
source ${EXECUTION_PATH}/sudoers.sh
source ${EXECUTION_PATH}/chrome.sh
source ${EXECUTION_PATH}/wsl.sh
source ${EXECUTION_PATH}/fonts.sh
source ${EXECUTION_PATH}/tmux.sh
source ${EXECUTION_PATH}/home-folders.sh
source ${EXECUTION_PATH}/set-permissions.sh
source ${EXECUTION_PATH}/nosuspend.sh
source ${EXECUTION_PATH}/ssh-keys.sh
source ${EXECUTION_PATH}/cleanup.sh


sudo timeshift --create --comments "INITIAL BACKUP" --tags D
