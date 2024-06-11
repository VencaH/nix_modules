{ config, pkgs, ... }:
{
 programs.helix = {
	enable = true;
	settings = {
		theme = "catppuccin_mocha";
		editor = {
			line-number = "relative";
			lsp.display-messages = true;
      lsp.display-inlay-hints = true;
		};
	};
	languages = with pkgs; {
		language = [{
			name = "rust";
		}];
		language-server = {
			rust-analyzer = {
				config = {
          cargo.features = "all";
          procMacro = {
            enabled = true;
            ignored.leptos_macro = [
				    "server"
				    ];
            };
          inlayHints.bindingModeHints.enable = false;
          inlayHints.closingBraceHints.minLines = 10;
          inlayHints.closureReturnTypeHints.enable = "with_block";
          inlayHints.discriminantHints.enable = "fieldless";
          inlayHints.lifetimeElisionHints.enable = "skip_trivial";
          inlayHints.typeHints.hideClosureInitialization = false;  
        };
			};
		};
	};
 };
}
