{ config, lib, pkgs, ... }:
let 
  common_pkgs = with pkgs; [
    ansible
    exercism
    zsh
    # neovim
    gcc
    lazygit
    htop
    fzf
    docker
    texlab
    tectonic
    chromium
    via
  ];
in {
  options.commonPkgs = lib.mkOption {
    type = lib.types.listOf lib.types.package;
    default = common_pkgs;
    description = "A list of commonly used packages.";
  };  
}
