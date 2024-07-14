base-software: rust
  echo "Installing base software..."

rust:
  #!/usr/bin/env bash
  set -euxo pipefail
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
  source "$HOME/.cargo/env"
