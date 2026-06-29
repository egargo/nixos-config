#!/usr/bin/env bash


set -e

COMMAND="$1"
PROFILE="$2"

_help() {
cat <<EOF
Usage: $0 <COMMAND>
	live-install <PROFILE>	Install NixOS from live ISO
	post-install		Post install configuration
EOF
}

live_install() {
	nix --experimental-features "nix-command flakes" run github:nix-community/disko/latest -- --mode destroy,format,mount "./hosts/$PROFILE/disko.nix"
	nixos-generate-config --root /mnt
	cp -rv . /mnt/etc/nixos
	mv -v /mnt/etc/nixos/hardware-configuration.nix "/mnt/etc/nixos/hosts/$PROFILE/hardware-configuration.nix"
	rm -v /mnt/etc/nixos/configuration.nix
	nixos-install --flake "/mnt/etc/nixos#$PROFILE"
	nixos-enter --root /mnt -c 'passwd clint'
}

post_install() {
	current_host=$(cat /etc/hostname)
	cp -v "/etc/nixos/hosts/$current_host/hardware-configuration.nix" "./hosts/$current_host/hardware-configuration.nix"
	git remote -v set-url origin git@github.com:egargo/nixos-config.git
	ln -vs "$PWD/nvim" ~/.config
	ln -vs "$PWD/ssh/config" ~/.ssh/config
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
