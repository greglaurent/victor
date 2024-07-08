set-global:
  #! /usr/bin/env bash

  env_path="/etc/environment"
  heredoc=$(mktemp)
  env_tmp=$(mktemp)

  cat <<EOT >> "${heredoc}"
  JUST_UNSTABLE=1
  TEST=true
  EOT

  cat "${env_path}" > "${env_tmp}"
  cat "${env_tmp}" "${heredoc}" | uniq > "${env_path}"

  rm -f "${env_tmp}" "${heredoc}"

set-profile:
  #! /usr/bin/env bash

  env_path="/etc/profile.d/env.sh"
  heredoc=$(mktemp)
  env_tmp=$(mktemp)

  cat <<EOT >> "${heredoc}"
  #! /usr/bin/env bash
  JUST_UNSTABLE=1
  EOT

  touch "${env_path}"

  cat "${env_path}" > "${env_tmp}"
  cat "${env_tmp}" "${heredoc}" | uniq > "${env_path}"

  chmod +x "${env_path}"

  rm -f "${env_tmp}" "${heredoc}"


