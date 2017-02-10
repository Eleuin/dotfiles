source /usr/share/zsh/scripts/antigen/antigen.zsh 

antigen use oh-my-zsh

antigen bundles <<EOBUNDLES
	git
	colored-man-pages
	command-not-found
	zsh-users/zsh-autosuggestions
	zsh-users/zsh-completions
	zsh-users/zsh-syntax-highlighting
EOBUNDLES

antigen theme bira

antigen apply

export SUDO_EDITOR=vim
alias se='sudoedit'
