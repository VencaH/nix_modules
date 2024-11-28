{ config, pkgs, ...}:
{
  imports = [
    ../home/nix_modules/helix.nix
    ../home/nix_modules/alacritty.nix
    ../home/nix_modules/zellij.nix
    ../home/nix_modules/git.nix
    ../home/nix_modules/starship.nix
    ../home/nix_modules/nushell.nix
    ../home/nix_modules/nixvim.nix
  ];
}
