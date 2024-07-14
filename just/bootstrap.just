mod install

base:
  echo "Installing from bootstrap..."
  just install::base-software

arch:
  #!/usr/bin/env bash
  echo "arch"
