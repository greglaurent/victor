#!/usr/bin/env bash

# set -euxo pipefail

utils:merge() {
  default_keep=0

  left_path="$1"
  right_path="$2"
  keep_lines="${3:-$default_keep}"
  #tmp_file=$(mktemp)

  echo "l: ${left_path} r: ${right_path} k: ${keep_lines}"

  # tail -n +3 "${env_path}" | cat - "${heredoc}" | sort -u - > "${body}"
  # head -n 2 "${env_path}" | cat - "${body}" > "${env_tmp}"
}

utils:merge a b

  # env_path="/etc/profile.d/env.sh"
  # env_tmp=$(mktemp)
  # heredoc=$(mktemp)
  # body=$(mktemp)


  # cat <<EOT >> "${heredoc}"
  # JUST_UNSTABLE=1
  # TEST=true
  # EOT

  # tail -n +3 "${env_path}" | cat - "${heredoc}" | sort -u - > "${body}"
  # head -n 2 "${env_path}" | cat - "${body}" > "${env_tmp}"
  # cat "${env_tmp}" > "${env_path}"

  # chmod +x "${env_path}"

  # rm -f "${env_tmp}" "${merge}" "${heredoc}"
