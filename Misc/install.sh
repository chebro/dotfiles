#!/bin/bash

function setup_zsh() {
	# install ohmyzsh
	curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

	# install plugins
	git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions
	git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
	git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
	git clone https://github.com/zsh-users/zsh-history-substring-search ~/.oh-my-zsh/custom/plugins/zsh-history-substring-search

	# install startship prompt
    curl -fsSL https://starship.rs/install.sh | bash
	
    # backup .zshrc if exists
	if [[ -e "$HOME/.zshrc" ]]; then 
			mv "$HOME/.zshrc" "$HOME/.zshrc.bak"
	fi
	
	# install my .zshrc
	wget -P "$HOME" https://raw.githubusercontent.com/chebro/dotfiles/master/.zshrc
}

setup_zsh
