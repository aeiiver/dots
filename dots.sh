#!/bin/sh

if ! command -v stow 1>/dev/null; then
    echo "Stow is required to run this script."
    return
fi

usage () {
    cat 1>&2 << HEREDOC
commands:
    s     Stow all packages
    d     Unstow all packages
HEREDOC
    exit 1
}

case "$1" in
    d)
        action="Unstow"
        stow_opt="-D"
        ;;
    s)
        action="Stow"
        stow_opt="-S"
        ;;
    *)
        usage;;
esac

yellow="\033[0;33m"
yellowbright="\033[1;33m"
reset="\033[0m"

for package in */; do
    preview="$(stow "${stow_opt}" -nvv "${package}" 2>&1)"

    echo "${action}ing '${package}' will do:"
    echo "${yellow}${preview}" | grep -v ^WARNING

    printf "${reset}${action} package '%s'? (Y/n) " "${package}"
    read -r yn

    case ${yn} in
        [yY]*|"")
            printf "${yellowbright}"
            stow "${stow_opt}" -v "${package}"
            ;;
        *);;
    esac
    echo "${reset}"
done
