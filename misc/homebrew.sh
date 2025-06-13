#!/usr/bin/env bash

# Homebrew helper for Proxmox Helper Scripts

show_help() {
  cat <<'HELP'
Usage: homebrew <command>

Available commands:
  tap      Add the Proxmox Helper Scripts tap
  install  Install the proxmox-helper-scripts formula
  update   Update the proxmox-helper-scripts formula
  list     List scripts provided by the formula
HELP
}

list_scripts() {
  echo "Available scripts:" 
  find ct vm turnkey install -maxdepth 1 -type f -name '*.sh' -printf '%f\n'
  find misc -type f -name '*.sh' -printf '%P\n'
}

if [[ $# -eq 0 ]]; then
  show_help
  exit 0
fi

case "$1" in
  tap)
    brew tap south-american-cowboy/proxmox https://github.com/south-american-cowboy/Proxmox.git
    ;;
  install)
    brew install proxmox-helper-scripts
    ;;
  update)
    brew upgrade proxmox-helper-scripts
    ;;
  list)
    list_scripts
    ;;
  *)
    show_help
    exit 1
    ;;
esac
