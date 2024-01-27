{ pkgs, ... }:
{ 
  environment = {
    systemPackages = with pkgs; [
      git
      fzf
      btop
      lsof
      unzip
      wget
      gcc
      bat
      clang
      gnumake
      killall
      ripgrep

      # Neovim pkg and lsp dependencies
      cargo
      nodejs

      # Podman tools
      podman-tui
      podman-compose

      linux-wifi-hotspot
    ];

    loginShellInit = ''
      if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
        exec Hyprland
      fi
    '';
  };
}