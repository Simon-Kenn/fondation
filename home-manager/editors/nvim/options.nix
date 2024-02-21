{ host, ...}:{
  programs.nixvim = {
		globals = {
			mapleader = " ";
    	maplocalleader = ",";
		};

		options = {
  	  enc = "utf-8";
			fileencoding = "utf-8";

			conceallevel = 3;

			syntax = "on";
  	 	ruler = true;
  	 	visualbell = true;
  	 	hidden = true;

  	 	number = true;
  	 	relativenumber = true;

  	 	foldmethod = "expr";
			foldexpr = "nvim_treesitter#foldexpr()";
  	 	foldenable = false;
  	 	foldlevel = 99;

  	 	tabstop = 2;
  	 	shiftwidth = 2;
  	 	softtabstop = 2;
  	 	smarttab = true;
  	 	autoindent = true;
  	 	smartindent = true;

			swapfile = false;
			backup = false;
			undodir = "${host.path}/.vim/undodir";
			undofile = true;

			hlsearch = false;
			incsearch = true;

			scrolloff = 8;
			colorcolumn = "120";
  	};
	};
}
