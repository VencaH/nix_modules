{
      plugins.cmp = {
      enable = true;
      settings =  {
      autoEnableSources = true;
      sources = [
        {name = "nvim_lsp";}
        {name = "path";}
        {name = "buffer";}
        {name = "luasnip";}
      ];

      mapping = {
        "<CR>" = "cmp.mapping.confirm({ select = true })";
        "<Tab>" = "cmp.mapping(
            function(fallback)
              luasnip = require('luasnip')
              if cmp.visible() then
                cmp.select_next_item()
              elseif luasnip.expandable() then
                luasnip.expand()
              elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
              else
                fallback()
              end
            end
          ,{'i','s'})";
        "<S-Tab>" = "cmp.mapping(
            function(fallback)
              luasnip = require('luasnip')
              if cmp.visible() then
                cmp.select_prev_item()
              elseif luasnip.jumpable(-1) then
                luasnip.jump(-1)
              else
                fallback()
            end
        end, {'i','s'}
        )";
        };
    };# snippets
};
}
