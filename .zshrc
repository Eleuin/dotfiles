source ~/.zshalias

if [[ ! -d ~/.zplug ]]; then
  git clone https://github.com/zplug/zplug ~/.zplug
  source ~/.zplug/init.zsh && zplug update
fi

source ~/.zplug/init.zsh

export SUDO_EDITOR=rnvim

zplug "robbyrussell/oh-my-zsh", use:"lib/*.zsh"
zplug "plugins/git",			from:oh-my-zsh
zplug "plugins/git-extras",		from:oh-my-zsh
zplug "plugins/extract",		from:oh-my-zsh
zplug "plugins/colored-man-pages",	from:oh-my-zsh
zplug "plugins/command-not-found",	from:oh-my-zsh
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-autosuggestions"
zplug "themes/bira", 			from:oh-my-zsh, as:theme

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load
