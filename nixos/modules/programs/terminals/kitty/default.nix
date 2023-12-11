{ user, ... }:

{
  home-manager.users.${user} = {
    imports = [ ./colors/gruvbox_dark.nix ];

    programs.kitty = {
      enable = false;
      font.size = 12;
      font.name = "JetBrainsMono Nerd Font";

      settings = {
        cursor_shape = "underline";
        scrollback_lines = 5000;
        tab_bar_style = "fade";
        tab_fade = 1;
        tab_bar_margin_width = 5;
        tab_bar_margin_height = 5;
        confirm_os_window_close = 0;
        allow_remote_control = "yes";
        listen_on = "unix:/tmp/mykitty";
      };
    };
  };
}