{ config, pkgs, ...}:
{
  imports = [
    ./helix.nix
    ./alacritty.nix
    ./zellij.nix
    ./git.nix
    ./starship.nix
    ./nushell.nix
    ./nixvim.nix
  ];
}
