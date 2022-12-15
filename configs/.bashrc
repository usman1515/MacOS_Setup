# https://github.com/w3cj/dotfiles

# setup bash aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# add homebrew installation location to $PATH variable
PATH="/usr/local/bin:$PATH"

# oh my posh
eval "$(oh-my-posh init bash)"