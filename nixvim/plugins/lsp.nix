{ pkgs, ... }:
{
  plugins.lsp = {
    enable = true;
    inlayHints = true;
    servers = {
      lua_ls.enable = true;
      rust_analyzer = {
        enable = true;
        settings = {
          rust_analyzer = {
            cargo.allFeatures = true;
            diagnostics.enable = true;
            procMacro.ignored.leptos_macro = ["server"];
          };
        };
      };
      nil_ls = {
        enable = true;
        settings = {
          formatting.command = ["nixpkgs-fmt"];
          nix.flake = {
            autoArchive = true;
          };
        };
      };
      texlab.enable = true;
      gleam.enable = true;
      pylsp.enable = true;
      ocamllsp = {
        enable = true;
        package = pkgs.ocamlPackages.ocaml-lsp;

      };    
    };
  };
}
