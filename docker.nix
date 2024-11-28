{ config, pkgs, ... }:
{
  virtualisation.docker = {
    enable = true;
    rootless = {
      enable = true;
      setSocketVariable = true;
    };
    daemon.settings = {
      data-root = "home/docker";
      userland-proxy = false;
    };
  };
}
