{
  colorschemes.catppuccin.enable = true;
  opts = {
    relativenumber = true;
    tabstop = 4;
    softtabstop = 4;
    shiftwidth = 4;
    expandtab = true;
  };
      

  plugins = {
  	web-devicons.enable = true;
  	lualine.enable  = true;
#    askpass.enable = true;

	telescope = {
	  enable = true;
	};
	
    undotree = {
	  enable = true;
	};

	notify = {
	  enable = true;
	};
	
    lazygit = {
      enable = true;
    }; 
  };


  imports = [
    ./keymaps.nix
    ./plugins/luasnip.nix
    ./plugins/lsp.nix
    ./plugins/treesitter.nix
    ./plugins/cmp.nix
    ./plugins/noice.nix
  ];
}
