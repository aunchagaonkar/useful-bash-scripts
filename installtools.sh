install_package() {
    package=$1
    manager=$2

    if ! pacman -Q $package &> /dev/null
    then
        if [ $manager == "pacman" ]
        then
            sudo pacman -S $package
        elif [ $manager == "yay" ]
        then
            yay -S $package
        fi
    else
        echo "$package is already installed"
    fi
}

sudo pacman -Syu #Upgrade all packages

# Install essential tools
install_package "archlinux-tweak-tool-git" "yay"
install_package "arcolinux-app-glade-git" "yay"
install_package "oneko" "yay"
install_package "peazip-qt-bin" "yay"
install_package "update-grub" "yay"
install_package "cloudflare-warp-bin" "yay"
install_package "microsoft-edge-stable-bin" "yay"
install_package "ttf-anka-coder-condensed" "yay"
install_package "visual-studio-code-bin" "yay"
install_package "google-chrome" "yay"
install_package "easystroke" "yay"
install_package "evince" "pacman"
install_package "vlc" "pacman"
install_package "quadrapassel" "pacman"
install_package "pulseaudio-bluetooth" "pacman"
install_package "bucklespring" "pacman"
install_package "qbitorrent" "pacman"
install_package "scrcpy" "pacman"
install_package "tlp" "pacman"