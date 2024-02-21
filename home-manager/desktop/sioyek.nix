{config, ...}: let 
	inherit (config.colorscheme) colors;
in {
	programs.sioyek = {
		enable = true;

		config = {
			"startup_commands" = "toggle_custom_color;fit_to_page_width";
			"ui_font" = "${config.fontProfiles.regular.family}";
			"font_size" = "12";

			"background_color" = "#${colors.base00}";
			"custom_background_color" = "#${colors.base00}";
			"status_bar_color" = "#${colors.base00}";
			"page_separator_color" = "#${colors.base00}";

			"custom_text_color" = "#${colors.base06}";
			"status_bar_text_color" = "#${colors.base06}";

			"ui_text_color" = "#${colors.base06}";
			"ui_background_color" = "#${colors.base01}";
			"ui_selected_background_color" = "#${colors.base0D}";
			"ui_selected_text_color" = "#${colors.base06}";

			"text_highlight_color" = "#${colors.base03}";
			"search_highlight_color" = "#${colors.base0A}";
			"link_highlight_color" = "#${colors.base0D}";
			"synctex_highlight_color" = "#${colors.base08}";

			"highlight_color_i" = "#${colors.base0A}"; 
			"highlight_color_q" = "#${colors.base0E}";
			"highlight_color_c" = "#${colors.base0E}";
			"highlight_color_d" = "#${colors.base08}";
			"highlight_color_a" = "#${colors.base0C}";
		};

		bindings = {
			# Ouverture de fichier
			"open_document" = "o";
			"open_prev_doc" = "O";
			"open_document_embedded" = "<Ctrl>o";
			"open_document_embedded_from_current_path" = "";

			# Mouvements
			# ----------

			"move_up" = "r";
			"move_down" = "s";
			"move_right" = "t";
			"move_left" = "n";

			"screen_up" = "R";
			"screen_down" = "S";

			"next_page" = "<C-s> s";
			"previous_page" = "<C-r>";

			"next_chapter" = "gc";
			"prev_chapter" = "gC";

			"goto_begining" = "gg";
			"goto_end" = "G";

			"goto_definition" = "gt";
			

			"goto_toc" = ";";

			# Taille de la fenêtre
			# --------------------

			"zoom_in" = "+";
			"zoom_out" = "-";

			"fit_to_page_width" = "f9";
			"fit_to_page_width_smart" = "f10";

			# Historique
			# ----------

			"prev_state" = "«";
			"next_state" = "»";

			# Aperçu / Saut intelligent
			# -------------------------

			# Marque visuelle
      # ---------------

			"move_visual_mark_down" = "s";
			"move_visual_mark_up" = "";

			# Recherche
			# ---------

			"search" = "/";
			"chapter_search" = "c/";
			"next_item" = "l";
			"previous_item" = "L";

			"overview_next_item" = ",k";
			"overview_prev_item" = ",K";
			

			# Marque
			# -------

			"set_mark" = "m";
			"goto_mark" = "'";

			# Marque page 
			# -----------

			"add_bookmark" = "b";
			"goto_bookmark" = ",b";
			"goto_bookmark_g" = ",B";

			# Sous-lignement
			# --------------

			"add_highlight" = "h";
			"goto_highlight" = ",h";
			"goto_highlight_g" = ",H";

			"goto_next_highlight" = "gh";
			"goto_prev_highlight" = "gH";

			 #Portail	
		};
	};
}
