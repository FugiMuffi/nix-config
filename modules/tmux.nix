{ config, lib, pkgs, ... }:
{
  programs.tmux = {
    enable = true;
    historyLimit = 10000;
    clock24 = true;
    extraConfig = ''
      set -g default-command ${pkgs.zsh}/bin/zsh
    '';
  };
}
