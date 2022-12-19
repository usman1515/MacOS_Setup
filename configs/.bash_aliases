# =========================== display neofetch on terminal
# neofetch

# =========================== run modelsim
alias modelsim='cd ~/intelFPGA_lite/18.1/modelsim_ase/bin/ && ./vsim'

# =========================== setup starship terminal emulator
# eval "$(starship init bash)"

# =========================== setup Oh My POSH terminal emulator
# favourites
# eval "$(oh-my-posh --init --shell bash --config ~/.poshthemes/amro.omp.json)"
# eval "$(oh-my-posh --init --shell bash --config ~/.poshthemes/nordtron.omp.json)"
# eval "$(oh-my-posh --init --shell bash --config ~/.poshthemes/half-life.omp.json)"
eval "$(oh-my-posh --init --shell bash --config ~/.poshthemes/kali.omp.json)"
# eval "$(oh-my-posh --init --shell bash --config ~/.poshthemes/probua.minimal.omp.json)"
# others
# eval "$(oh-my-posh --init --shell bash --config ~/.poshthemes/honukai.omp.json)"
# eval "$(oh-my-posh --init --shell bash --config ~/.poshthemes/iterm2.omp.json)"
# eval "$(oh-my-posh --init --shell bash --config ~/.poshthemes/microverse-power.omp.json)"
# eval "$(oh-my-posh --init --shell bash --config ~/.poshthemes/paradox.omp.json)"
# eval "$(oh-my-posh --init --shell bash --config ~/.poshthemes/slimfat.omp.json)"
# eval "$(oh-my-posh --init --shell bash --config ~/.poshthemes/ys.omp.json)"

# =========================== terminal display
# 1.    display username, hostname, time, pwd in terminal
# export PS1="[\e[01;32m\]\u\e[m@\e[1;36m\h\e[m] \e[1;31m[\@]\e[m \e[1;35m[\w]\e[m \n$ "

# 2.    display username, hostname, pwd in terminal
# export PS1="[\e[01;32m\]\u\e[m@\e[1;36m\h\e[m] \e[1;35m[\w]\e[m \n$ "

# =========================== khazana server login
alias khazanaserver="ssh usiddique@115.0.10.58"

# =========================== common command aliases
alias 1..='cd ..'
alias 2..='cd ../..'
alias 3..='cd ../../..'
alias 4..='cd ../../../..'

# display folders
alias ls='ls -F --group-directories-first --color=auto'
alias ll='ls -lh --color=auto'

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
