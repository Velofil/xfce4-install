#!/usr/bin/env bash

set -e

## configure and install minimal xfce desktop environment

## check for sudo/root
if ! [ $(id -u) = 0 ]; then
  echo "This script must run with sudo, try again..."
  exit 1
fi

cat ./xsessionrc >> /home/$SUDO_USER/.xsessionrc
chown $SUDO_USER:$SUDO_USER /home/$SUDO_USER/.xsessionrc

xfce4() {
	sudo apt install -y \
		libxfce4ui-utils \
		thunar \
		thunar-volman \
		xfce4-appfinder \
		xfce4-session \
		xfce4-settings \
		xfce4-terminal \
		xfce4-pulseaudio-plugin \
		xfce4-panel \
		xfce4-mixer \
		xfce4-whiskermenu-plugin \
		xfce4-notifyd \
		tumbler \
		xfconf \
		xfdesktop4 \
		xfwm4 \
		xfce4-power-manager \
		xfce4-screensaver \
		xfce4-screenshooter \
		xfce4-taskmanager \
		xfce4-clipman-plugin \
		xfce4-datetime-plugin \
		xfce4-docklike-plugin \
		xfce4-mount-plugin \
		xfce4-mpc-plugin \
		xfce4-places-plugin \
		xfce4-smartbookmark-plugin \
		xfce4-wavelan-plugin \
		xfce4-weather-plugin \
		mousepad \
		libxfce4windowing \
		libxfce4util \
		libxfce4ui \
		network-manager-gnome \
		network-manager-openvpn \
		network-manager-openvpn-gnome \
		wl-clipboard \
		adwaita-qt \
		catfish \
		qt5ct \
		garcon \
		gigolo \
		papirus-icon-theme \
		moka-icon-theme \
		paper-icon-theme \
		xsel
}

apps() {
	sudo apt install -y \
		firefox-esr \
		keepassxc \
		libreoffice-gtk3 \
		libreoffice\
		audacity \
		cava \
		cmatrix \
		cmus \
		copyq \
		duf \
		fastfetch \
		git \
		handbrake \
		htop \
		hw-probe \
		img2pdf \
		intel-microcode \
		menulibre \
		mp3gain \
		mp3splt \
		mp3wrap \
		msttcorefonts \
		mumble \
		ncdu \
		nfs-common \
		parole \
		picard \
		pipx \
		plank \
		rapid-photo-downloader \
		remmina \
		ristretto \
		sane-airscan \
		speedtest-cli \
		spotify-client \
		steam \
		strawberry \
		sudo \
		syncthing \
		thunderbird-esr \
		transmission \
		wine \
		winetricks \
		wireguard \
		xfburn \
		yt-dlp \
		zim \
}

if  $(uname) == 'Linux' ; then
	if [ "$(/bin/grep ^ID= /etc/os-release)" = "ID=debian" ]; then
		"$@" && echo
	fi
fi

echo 
echo xfce install complete, please reboot and issue 'startx'
echo
