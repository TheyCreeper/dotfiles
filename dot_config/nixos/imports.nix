{ pkgs, ... }: {
  imports = [
    # other files
    ./variables.nix

    # Package imports
    ./packages/packages.nix
  ];
}