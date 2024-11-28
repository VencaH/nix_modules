{
  plugins.lsp = {
    enable = true;
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
      nil_ls.enable = true;
      texlab.enable = true;
    # ocamllsp.enable = true;
    };
  };
}
