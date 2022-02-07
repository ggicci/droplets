#!/usr/bin/env bash

confirmed() {
  local message="$1"

  read -erp "${message} (Y/n) /> " confirmed

  local norm_confirmed="${confirmed}"
  if [[ "${norm_confirmed}" == "y" || "${norm_confirmed}" == "yes" ]]; then
    return 0
  fi

  return 1
}
