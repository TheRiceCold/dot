{ pkgs, ... }:
let
  nerdfonts = (pkgs.nerdfonts.override { fonts = [
    "Ubuntu"
    "UbuntuMono"
    "CascadiaCode"
    "FantasqueSansMono"
    "FiraCode"
    "Mononoki"
  ]; });
in {
  imports = [
    ./ags
    ./gtk
    ./hyprland
    ./waybar.nix
  ];

  home = {
    packages = with pkgs; [ 
      material-icons
      material-design-icons
      lexend
      noto-fonts
      noto-fonts-cjk
      noto-fonts-emoji

      nerdfonts 
      font-awesome

      showmethekey
    ];

    file = {
      ".local/share/fonts" = {
        recursive = true;
        source = "${nerdfonts}/share/fonts/truetype/NerdFonts";
      };
      ".fonts" = {
        recursive = true;
        source = "${nerdfonts}/share/fonts/truetype/NerdFonts";
      };
    };

    pointerCursor = {
      size = 22;
      name = "Bibata-Modern-Ice";
      package = pkgs.bibata-cursors;
    };
  };

  qt = {
    enable = true;
    platformTheme = "qtct";
    style = {
      name = "Catppuccin-Mocha-Dark";
      package = pkgs.catppuccin-kde.override {
        flavour = [ "mocha" ];
        accents = [ "lavender" ];
      };
    };
  };
}
