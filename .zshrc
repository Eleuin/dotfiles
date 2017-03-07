source /usr/share/zsh/share/antigen.zsh 

antigen use oh-my-zsh

antigen bundles <<EOBUNDLES
	git
	git-extras
	extract
	colored-man-pages
	command-not-found
	zsh-users/zsh-autosuggestions
	zsh-users/zsh-completions
	zsh-users/zsh-syntax-highlighting
EOBUNDLES

antigen theme bira

antigen apply

export SUDO_EDITOR=rvim
alias se='sudoedit'
