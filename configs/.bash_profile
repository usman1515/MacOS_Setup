# =============================================== add homebrew installed packages paths to $PATH var
# homebrew
if [ -d "/opt/homebrew/bin" ]; then
	PATH="/opt/homebrew/bin:$PATH"
fi
# make - installed as gmake
if [ -d "/opt/homebrew/opt/make/libexec/gnubin" ]; then
	PATH="/opt/homebrew/opt/make/libexec/gnubin:$PATH"
fi
# python3.10
if [ -d "/opt/homebrew/bin/python3" ]; then
	PATH="/opt/homebrew/bin/python3:$PATH"
fi
# curl
if [ -d "/opt/homebrew/opt/curl/bin" ]; then
	PATH="/opt/homebrew/opt/curl/bin:$PATH"
fi
# sed - installed as gsed
if [ -d "/opt/homebrew/opt/gnu-sed/libexec/gnubin" ]; then
	PATH="/opt/homebrew/opt/gnu-sed/libexec/gnubin:$PATH"
    # For compilers to find curl you may need to set:
    export LDFLAGS="-L/opt/homebrew/opt/curl/lib"
    export CPPFLAGS="-I/opt/homebrew/opt/curl/include"
fi
# awk - installed as gawk
if [ -d "/opt/homebrew/opt/gawk/libexec/gnubin" ]; then
	PATH="/opt/homebrew/opt/gawk/libexec/gnubin:$PATH"
fi
# bison
if [ -d "/opt/homebrew/opt/bison/bin" ]; then
    PATH="/opt/homebrew/opt/bison/bin:$PATH"
    LDFLAGS="-L/opt/homebrew/opt/bison/lib"
fi
# flex
if [ -d "/opt/homebrew/opt/flex/bin" ]; then
    PATH="/opt/homebrew/opt/flex/bin:$PATH"
    LDFLAGS="-L/opt/homebrew/opt/flex/lib"
    CPPFLAGS="-I/opt/homebrew/opt/flex/include"
fi
# libffi
if [ -d "/opt/homebrew/opt/libffi/" ]; then
    export LDFLAGS="-L/opt/homebrew/opt/libffi/lib"
    export CPPFLAGS="-I/opt/homebrew/opt/libffi/include"
fi

# =======================================================================================
# =======================================================================================

# bash completion
[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"

# append to the history file, don't overwrite it
shopt -s autocd
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=10000
HISTFILESIZE=20000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# Specify default editor. Possible values: vim, nano, ed etc.
export EDITOR=nvim

# ====================================================== prettify terminal
# display neofetch on terminal
# neofetch

# display fortune quote inside cowsay tux
# fortune | cowsay -f tux

# specfiy user in terminal - default case
export PS1="[\e[01;32m\]\u\e[m@\e[1;36m\h\e[m] \e[1;35m[\w]\e[m \n$ "

# starship terminal emulator
# eval "$(starship init bash)"

# oh-my-posh terminal emulator
eval "$(oh-my-posh init bash)"
# view available themes: ls $(brew --prefix oh-my-posh)/themes

# my favourite oh-my-posh themes - uncomment to set
# eval "$(oh-my-posh init bash --config /opt/homebrew/opt/oh-my-posh/themes/iterm2.omp.json)"
eval "$(oh-my-posh init bash --config /opt/homebrew/opt/oh-my-posh/themes/kali.omp.json)"

# ====================================================== Aliases
# replace clang GCC/G++ with GNU
alias g++='g++-12'
alias gcc='gcc-12'

# add color support
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# go to directory
alias 1..='cd ..'
alias 2..='cd ../..'
alias 3..='cd ../../..'
alias 4..='cd ../../../..'

# display folders
alias ls='exa -GxF --icons --group-directories-first --color=auto'
alias ll='exa -alhF --icons --group-directories-first --color=auto'

# display tree
alias tree='tree -q --dirsfirst -C --sort name'

# display all mounted drives
alias mnt="mount | awk -F' ' '{ printf \"%s\t%s\n\",\$1,\$3; }' | column -t | egrep ^/dev/ | sort"

# count files in directory
alias count='find . -type f | wc -l'

# copy progress bar: cpy ./source ./destination
alias cpv='rsync -ah --info=progress2'

# change dir and view contents simultaneously
function cl() {
    DIR="$*";
        # if no DIR given, go home
        if [ $# -lt 1 ]; then
                DIR=$HOME;
    fi;
    builtin cd "${DIR}" && \
    # use your preferred ls command
        ls
}
