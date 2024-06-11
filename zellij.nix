{ config, pkgs, ... }:
{
  programs.zellij = {
    enable = true;
    settings = {
      theme = "catppuccin-mocha";
    };  
};
}
