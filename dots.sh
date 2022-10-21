#!/bin/sh

if ! command -v stow 1>/dev/null; then
    echo "Stow is required to run this script."
    exit 1
fi

usage () {
    cat 1>&2 << HEREDOC
Usage: $0 <command>

Commands:
    s, stow      Stow all packages
    d, delete    Unstow all packages
HEREDOC
    exit 1
}

case "$1" in
    s|stow)
        action="Stow"
        stow_opt="-S";;
    d|delete)
        action="Unstow"
        stow_opt="-D";;
    "")
        usage;;
    *)
	echo "$0: unknown command '$1'"
        usage;;
esac

yellow="\033[0;33m"
yellowbold="\033[1;33m"
reset="\033[0m"

for package in */; do
    preview="$(stow "${stow_opt}" -nvv "${package}" 2>&1)"

    echo "${action}ing '${package}' will do:"
    echo "${yellow}${preview}" | grep -v ^WARNING

    printf "${reset}${action} package '${package}'? ([Y]es/[n]o) "
    read -r yn

    case ${yn} in
        [yY]es|[yY]e|[yY]|"")
            printf "${yellowbold}"
            stow "${stow_opt}" -v "${package}";;
        *);;
    esac
    echo "${reset}"
done
