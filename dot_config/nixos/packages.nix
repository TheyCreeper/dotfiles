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
  
  # Install firefox.
  programs.firefox.enable = true;
  programs.steam.enable = true;

  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
     vscode
     brave
     hello
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
     chromium
  ];
}