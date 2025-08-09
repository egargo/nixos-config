#!/usr/bin/env bash


set -e

COMMAND="$1"

_help() {
cat <<EOF
Usage: $0 <COMMAND>
	live-install	Install NixOS from live ISO
	post-install	Post install configuration
EOF
}

live_install() {
	nix --experimental-features "nix-command flakes" run github:nix-community/disko/latest -- --mode destroy,format,mount ./disko/btrfs.nix
	nixos-generate-config --root /mnt
	cp -rv . /mnt/etc/nixos
	mv -v /mnt/etc/nixos/hardware-configuration.nix /mnt/etc/nixos/profiles/unit-01/hardware-configuration.nix
	rm -v /mnt/etc/nixos/configuration.nix
	nixos-install --flake /mnt/etc/nixos#bee
	nixos-enter --root /mnt -c 'passwd clint'
}

post_install() {
	cp -v /etc/nixos/profiles/unit-01/hardware-configuration.nix ./profiles/unit-01/hardware-configuration.nix
	git remote -v set-url origin git@github.com:egargo/nixos-config.git
	ln -vs "$PWD/config/nvim" ~/.config
	mkdir -v ~/.ssh
	ln -vs "$PWD/config/ssh/config" ~/.ssh/config
	rm -vrf ~/.config/ghostty
}

main() {
	case "$COMMAND" in
		"live-install")
			live_install
		;;
		"post-install")
			post_install
		;;
		"help")
			_help
		;;
		*)
			_help
		;;
	esac
}

main
