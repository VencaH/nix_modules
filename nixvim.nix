{config, pkgs, ...}:
{
  programs.nixvim = {
    enable = true;
    imports = [
      ./nixvim/default.nix
    ];


  };
}
