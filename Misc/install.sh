#!/bin/bash

function setup_zsh() {
	# install ohmyzsh
	sh -c '$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)'
  
	# install plugins
  	sh -c '
  	git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions
  	git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
  	git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
  	git clone https://github.com/zsh-users/zsh-history-substring-search ~/.oh-my-zsh/custom/plugins/zsh-history-substring-search'
  
  	# install spaceship theme
  	sh -c '
  	git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
  	ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"'
  
  	# backup .zshrc if exists
  	if [[ -e "$HOME/.zshrc" ]]; then mv "$HOME/.zshrc" "$HOME/.zshrc.bak"
  
  	# get my .zshrc
  	wget -P "$HOME" https://raw.githubusercontent.com/chebro/dotfiles/master/.zshrc
  	fi
}
