{ config, pkgs, ... }:

{
   hardware.graphics = {
    enable = true;
  };

  # Load nvidia driver for Xorg and Wayland
  services.xserver.videoDrivers = ["nvidia"];

  hardware.nvidia = {

    # Modesetting is required.
    modesetting.enable = true;

    powerManagement.enable = false;

    powerManagement.finegrained = false;
    open = true;

    # Enable the Nvidia settings menu,
	  # accessible via `nvidia-settings`.
    nvidiaSettings = true;

    # Optionally, you may need to select the appropriate driver version for your specific GPU.
    package = config.boot.kernelPackages.nvidiaPackages.stable;
  };

  programs.fish.enable = true;
  users.extraUsers.creeper = {
    shell = pkgs.fish;
  };

  programs.nix-ld.enable = true;
  programs.nix-ld.libraries = with pkgs; [
    fuse
  ];

  # Install firefox.
  programs.firefox.enable = true;
  programs.steam.enable = true;

  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
     vscode
     brave
     git
     prismlauncher
     alacritty
     konsave
     vesktop
     fastfetch
     btop
     chezmoi
     tmux
     fish
     docker
     docker-compose
     winboat
	   micro
     steam
     devbox
     distrobox
     dotnet-sdk_10
     nodejs
     pear-desktop
     lunar-client
     google-chrome
     telegram-desktop
     direnv
     icu
  ];
}