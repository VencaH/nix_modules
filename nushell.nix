{ config, pkgs, ... }:
{
  programs.nushell = {
    enable = true;
    envFile.source = ./configs/nushell/env.nu;
    configFile.source = ./configs/nushell/config.nu;
  };
}

