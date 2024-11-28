{
  plugins.treesitter = {
    enable = true;
    settings = {
      ensure_installed = [
        "vimdoc"
        "javascript"
        "typescript"
        "c"
        "lua"
        "nix"
        "rust"
        "ocaml"
      ];
      sync_install = false;
      auto_install = true;
      highlight = {
        enable = true;
        additional_vim_regex_highlighting = false;
      };
    };
  };
}
