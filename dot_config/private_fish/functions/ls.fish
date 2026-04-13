function ls --description 'alias ls=ls --color=auto'
    command ls --color=auto $argv
end

function grep --description 'alias grep=grep --color=auto'
    command grep --color=auto $argv
end

function la --description 'alias la=ls -la'
    command ls -la $argv
end

function clear --description 'alias clear=clear && fastfetch'
    command clear
    command fastfetch --logo-type small --logo arch
end

function clr --description 'alias clr=clear'
    command clear
end

function cma --description 'alias cma=chezmoi apply'
    command chezmoi apply $argv
end

function nedit --description 'alias nedit=sudo micro /etc/nixos/configuration.nix'
    command sudo micro /etc/nixos/configuration.nix $argv
end

function napply --description 'alias napply=sudo nixos-rebuild switch --upgrade'
    command sudo nixos-rebuild switch --upgrade $argv
end

function ngc --description 'alias ngc=sudo nix-collect-garbage -d --delete-older-than 10d'
    command sudo nix-collect-garbage -d --delete-older-than 10d $argv
end

function lff --description 'alias lff=lf -command set hidden true'
    command lf -command 'set hidden true' $argv
end

function fastfetch --description 'alias fastfetch=fastfetch --logo-type small --logo arch'
    command fastfetch --logo-type small --logo arch $argv
end

function e --description 'alias e=exit'
    exit $argv
end

function apienv --description 'alias apienv=cd ~/Documents/Dev/cardb/CarDB_Api && source ~/Documents/Dev/cardb/CarDB_Api/.venv/bin/activate'
    cd ~/Documents/Dev/cardb/CarDB_Api
    source ~/Documents/Dev/cardb/CarDB_Api/.venv/bin/activate
end

function appenv --description 'alias appenv=cd ~/Documents/Dev/cardb/CarDB_App && npm run dev'
    cd ~/Documents/Dev/cardb/CarDB_App
    command npm run dev $argv
end

function vm --description 'alias vm=sudo virsh start win11'
    command sudo virsh start win11 $argv
end
