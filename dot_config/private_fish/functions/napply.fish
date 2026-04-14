function napply --description 'alias napply=sudo nixos-rebuild switch --upgrade'
    command sudo nixos-rebuild switch --upgrade $argv
end
