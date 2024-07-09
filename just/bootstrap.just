# @just --choose -- chooser

default: 
  #!/usr/bin/env bash
  SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
  echo "${SCRIPT_DIR}"

# default:
#   #!/usr/bin/env bash
#   SOURCE=${BASH_SOURCE[0]}
#   while [ -L "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
#     DIR=$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )
#     SOURCE=$(readlink "$SOURCE")
#     [[ $SOURCE != /* ]] && SOURCE=$DIR/$SOURCE
#   done
#   DIR=$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )
# 
#   echo "${DIR}"

arch:
  echo "arch"

rust:
  #!/us
