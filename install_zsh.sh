#! /bin/sh

if [[ -e /usr/bin/pacman ]]; then
	sudo pacman -Syu
	yes | sudo pacman -S zsh git curl wget which rsync tree

elif [[ -e /usr/bin/apt ]]; then
	sudo apt update
	sudo apt install -y zsh git curl wget which rsync tree	
fi

ZSH_CUSTOM=/usr/share/zsh

wget -P "$ZSH_CUSTOM" https://raw.githubusercontent.com/chebro/dotfiles/master/misc/zsh_prompt
git clone https://github.com/zsh-users/zsh-syntax-highlighting "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"
git clone https://github.com/zsh-users/zsh-autosuggestions "$ZSH_CUSTOM/plugins/zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-history-substring-search "$ZSH_CUSTOM/plugins/zsh-history-substring-search"

sudo chsh -s $(which zsh) $USER
