function rebuild --description 'alias rebuild=sudo nixos-rebuild switch'
    command sudo nixos-rebuild switch -I nixos-config=/home/creeper/.config/nixos/configuration.nix $argv
end
