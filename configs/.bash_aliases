# =========================== add homebrew installation location to $PATH variable
PATH="/usr/local/bin:$PATH"

# =========================== display neofetch on terminal
neofetch

# =========================== starship terminal emulator
# eval "$(starship init bash)"      # uncomment to enable

# =========================== Oh My Posh terminal themes (uncomment to set)
# favourites
# eval "$(oh-my-posh --init --shell bash --config ~/.poshthemes/amro.omp.json)"
# eval "$(oh-my-posh --init --shell bash --config ~/.poshthemes/nordtron.omp.json)"
# eval "$(oh-my-posh --init --shell bash --config ~/.poshthemes/half-life.omp.json)"
eval "$(oh-my-posh --init --shell bash --config ~/.poshthemes/kali.omp.json)"
# eval "$(oh-my-posh --init --shell bash --config ~/.poshthemes/probua.minimal.omp.json)"
# eval "$(oh-my-posh --init --shell bash --config ~/.poshthemes/honukai.omp.json)"
# eval "$(oh-my-posh --init --shell bash --config ~/.poshthemes/iterm2.omp.json)"
# eval "$(oh-my-posh --init --shell bash --config ~/.poshthemes/microverse-power.omp.json)"
# eval "$(oh-my-posh --init --shell bash --config ~/.poshthemes/paradox.omp.json)"
# eval "$(oh-my-posh --init --shell bash --config ~/.poshthemes/slimfat.omp.json)"
# eval "$(oh-my-posh --init --shell bash --config ~/.poshthemes/ys.omp.json)"


# =========================== common command aliases
# go to directory
alias 1..='cd ..'
alias 2..='cd ../..'
alias 3..='cd ../../..'
alias 4..='cd ../../../..'

# display folders
alias ls='ls -F --group-directories-first --color=auto'
alias ll='ls -lh --indicator-style=slash -S --time-style=iso'
alias lsa='ls --almost-all'
alias lla='ll --almost-all'

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
