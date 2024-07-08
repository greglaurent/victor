#!/usr/bin/env bash
set -euxo pipefail

install() {
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
	source "$HOME/.cargo/env"
}

uninstall() {
	rustup self uninstall
}

main() {
	while getopts i:u: flag
	do
	    case "${flag}" in
	        i) installi
		    exit;;
	        u) uninstall
		   exit;;
	    esac
	done
}

main "$@"
