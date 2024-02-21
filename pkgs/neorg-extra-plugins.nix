{ lib, buildVimPluginFrom2Nix, fetchurl, fetchgit }: 
{
	neorg-templates = buildVimPluginFrom2Nix {
		pname = "neorg-templates";
		version = "2023-11-30";
		src = fetchurl {
			url = "https://github.com/pysan3/neorg-templates/archive/refs/tags/v2.0.2.tar.gz";
			sha256 = "0hiab78j61gdn9zx4458lqllm9bqnkmrinw8p2mp8whvyi2asd40";
		};
		meta = {
			description = "A plugin for creating templates";
			homepage = "https://github.com/pysan3/neorg-templates";
		};
	};
}
