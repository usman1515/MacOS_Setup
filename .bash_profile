# ====================================================== add homebrew installed packages paths to $PATH variable
# ----- homebrew path
PATH="/opt/homebrew/bin:$PATH"
# ----- python path
PATH="/opt/homebrew/bin/python3:$PATH"
# ----- openjdk path
PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
# ----- curl path
PATH="/opt/homebrew/opt/curl/bin:$PATH"
# ----- gnu-make path
PATH="/opt/homebrew/opt/make/libexec/gnubin:$PATH"
# ----- gnu-sed path
PATH="/opt/homebrew/opt/gnu-sed/libexec/gnubin:$PATH"
# ----- coreutils path
PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"

# =======================================================================================
# =======================================================================================

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

# bash completion
[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"

# Specify default editor. Possible values: vim, nano, ed etc.
export EDITOR=vim

# ====================================================== prettify terminal
# display neofetch on terminal
neofetch

# display fortune quote inside cowsay tux
# fortune | cowsay -f tux

# specfiy user in terminal - default case
# export PS1="[\e[01;32m\]\u\e[m@\e[1;36m\h\e[m] \e[1;35m[\w]\e[m \n$ "

# starship terminal emulator
eval "$(starship init bash)"

# oh-my-posh terminal emulator
# eval "$(oh-my-posh init bash --config /opt/homebrew/opt/oh-my-posh/themes/jandedobbeleer.omp.json)"

# ====================================================== Aliases
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
        ls -F --group-directories-first --color=auto
}
