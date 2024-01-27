{ pkgs, ... }:
{
  programs.tmux = {
    enable = true;
    mouse = true;
    baseIndex = 1;
    keyMode = "vi";
    terminal = "xterm-256color";
    extraConfig = ''
      set -g @catppuccin_flavour 'mocha'
    '';
    plugins = with pkgs.tmuxPlugins; [
      resurrect
      catppuccin
    ];
  };
}