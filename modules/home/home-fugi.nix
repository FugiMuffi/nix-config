{ config, pkgs, lib, ... }: {

  imports = [
    ./base.nix
    ./nvim.nix
    ./git.nix
    ./foot.nix
  ];

  home.username = "fugi";
  home.homeDirectory = "/home/fugi";
}
