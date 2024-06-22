{ config, pkgs, ... }:
{
 programs.helix = {
	enable = true;
	settings = {
		theme = "catppuccin_mocha";
		editor = {
		true-color = true;
			line-number = "relative";
			lsp.display-messages = true;
      lsp.display-inlay-hints = true;
		};
	};
	languages = with pkgs; {
		language = [		
			{
				name = "ocaml";
				formatter = {
					command = "ocamlformat";
					args = [
						"-"
						"--impl"
					];
				};
			}
			{
				name = "rust";
			}
		];
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
          inlayHints = 
					{
						bindingModeHints.enable = false;
	          closingBraceHints.minLines = 10;
	          closureReturnTypeHints.enable = "with_block";
	          discriminantHints.enable = "fieldless";
	          lifetimeElisionHints.enable = "skip_trivial";
	          typeHints.hideClosureInitialization = false;  
					};
        };
			};
		};
	};
 };
}
