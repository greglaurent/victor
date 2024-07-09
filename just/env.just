mod utils

# set-global:
#   #! /usr/bin/env bash
# 
#   env_path="/etc/environment"
#   env_tmp=$(mktemp)
#   heredoc=$(mktemp)
#   body=$(mktemp)
# 
#   touch "${env_path}"
# 
#   cat <<EOT >> "${heredoc}"
#   JUST_UNSTABLE=1
#   TEST=true
#   EOT
# 
#   tail -n +3 "${env_path}" | cat - "${heredoc}" | sort -u - > "${body}"
#   head -n 2 "${env_path}" | cat - "${body}" > "${env_tmp}"
#   cat "${env_tmp}" > "${env_path}"
# 
#   rm -f "${env_tmp}" "${merge}" "${heredoc}"

set-profile:
  #! /usr/bin/env bash
  set -euxo pipefail

  env_path="/etc/profile.d/env.sh"
  env_tmp=$(mktemp)
  heredoc=$(mktemp)
  body=$(mktemp)


  # cat <<EOT >> "${heredoc}"
  # JUST_UNSTABLE=1
  # TEST=true
  # EOT

  # tail -n +3 "${env_path}" | cat - "${heredoc}" | sort -u - > "${body}"
  # head -n 2 "${env_path}" | cat - "${body}" > "${env_tmp}"
  # cat "${env_tmp}" > "${env_path}"

  # chmod +x "${env_path}"

  # rm -f "${env_tmp}" "${merge}" "${heredoc}"
