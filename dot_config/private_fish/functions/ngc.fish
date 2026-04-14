function ngc --description 'alias ngc=sudo nix-collect-garbage -d --delete-older-than 10d'
    command sudo nix-collect-garbage -d --delete-older-than 10d $argv
end
