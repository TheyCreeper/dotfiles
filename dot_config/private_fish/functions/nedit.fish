function nedit --description 'alias nedit=sudo micro /etc/nixos/configuration.nix'
    command sudo micro /etc/nixos/configuration.nix $argv
end
