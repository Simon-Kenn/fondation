{
  programs.nixvim.keymaps = [

		# Motion    
		{ options.desc = ""; key = "t"; action = "h"; }
    { options.desc = ""; key = "n"; action = "l"; }

    { options.desc = ""; key = "s"; action = "j"; }
    { options.desc = ""; key = "r"; action = "k"; }

		{ options.desc = "mot préc"; key = "b"; action = "b";}	
		{ options.desc = "MOT préc"; key = "B"; action = "B";}	

    { options.desc = "mot suiv"; key = "é"; action = "w"; }
    { options.desc = "MOT suiv"; key = "É"; action = "W"; }

    { options.desc = "mot fin"; key = "e"; action = "e"; }
    { options.desc = "MOT fin"; key = "E"; action = "E"; }

    { options.desc = "Haut de l'écran"; key = "T"; action = "H"; }
    { options.desc = "Bas de l'écran"; key = "N"; action = "L"; }
    { options.desc = "Milieu de l'écran"; key = "M"; action = "M"; }

    { options.desc = "Jusqu'à"; key = "j"; action = "t"; }
    { options.desc = "Jusqu'à arrière"; key = "J"; action = "T"; }

    { options.desc = "Recherche suivante"; key = "l"; action = "n"; }
    { options.desc = "Recherche précédante"; key = "L"; action = "N"; }

    { options.desc = "Première ligne"; key = "gg"; action = "gg"; }
    { options.desc = "Dernière ligne"; key = "G"; action = "G"; }

    { options.desc = "Repli suivant"; key = "zr"; action = "zj"; }
    { options.desc = "Repli précédant"; key = "zs"; action = "zk"; }

    { options.desc = "Marque : ligne et col"; key = "`"; action = "`"; }
    { options.desc = "Marque : ligne"; key = "'"; action = "'"; }

    { options.desc = "Indentation précedente"; key = "#"; action = "#"; }
		{ options.desc = "Indentation suivante"; key = "*"; action = "*"; }

    { options.desc = "Fin de ligne"; key = "$"; action = "$"; }
		{ options.desc = "Match"; key = "%"; action = "%"; }

		{ options.desc = "Début de ligne doux"; key = "^"; action = "^"; }
    { options.desc = "Début de ligne doux bas";key = "_"; action  = "_"; }
    { options.desc = "Début de ligne / aller à la col";key = "|"; action  = "|"; }

    { options.desc = "Début de phrase"; key = "4"; action  = "("; }
    { options.desc = "Fin de phrase"; key = "5"; action  = ")"; }

    { options.desc = "Début de paragraphe"; key = "{"; action  = "{"; }
    { options.desc = "Fin de paragraphe"; key = "}"; action  = "}"; }

    { options.desc = "Ligne précedente"; key = "8"; action  = "-"; }
    { options.desc = "Ligne suivante"; key = "7"; action  = "+"; }

    { options.desc = "Trouver carac suivant"; key = "f"; action  = "f"; }
    { options.desc = "Trouver carac précedent"; key = "F"; action  = "F"; }

    { options.desc = "EOF / aller à"; key = "G"; action  = "G"; }

    { options.desc = "Répete t/T/f/F"; key = ";"; action  = ";"; }
    { options.desc = "Inverse t/T/f/F"; key = ","; action  = ","; }

    { options.desc = "Recherche"; key = "\\"; action = "/"; } # Remplace carac sous curseur
    { options.desc = "Recherche inversé"; key = "?"; action = "?"; } # Entre dans le mode de remplacement

		# Commande - Insertion
    { options.desc = "Mode remplacement"; key = "H"; action = "R"; }

    { options.desc = "Mode insertion"; key = "i"; action = "i"; }
    { options.desc = "Insert bol"; key = "I"; action = "I"; }

    { options.desc = "Insert ligne suivante"; key = "o"; action = "o"; }
    { options.desc = "Insert ligne précedente"; key = "O"; action = "O"; }

    { options.desc = "Insert aprés carac"; key = "a"; action = "a"; }
    { options.desc = "Insert eol"; key = "A"; action = "A"; }

    { options.desc = "Substituer char"; key = "k"; action = "s"; }
    { options.desc = "Substituer ligne"; key = "K"; action = "S"; }

    { options.desc = "Changer à eol"; key = "C"; action = "C"; }

		# Commande
    { options.desc = "Inverse la casse"; key = "~"; action = "~"; }
    { options.desc = "Lancer la macro"; key = "@"; action = "@"; }
    { options.desc = "Répete :s"; key = "&"; action = "&"; }
    { options.desc = "Mode enregistrement"; key = "q"; action = "q"; }
    { options.desc = "Quitte mode enregistrement"; key = "Q"; action = "Q"; }
    { options.desc = "Remplacer char"; key = "h"; action = "r"; }
    { options.desc = "Copier ligne"; key = "Y"; action = "Y"; }
    { options.desc = "Défaire ligne"; key = "U"; action = "U"; }
    { options.desc = "Défaire"; key = "u"; action = "u"; }
    { options.desc = "Coller après"; key = "p"; action = "p"; }
    { options.desc = "Coller avant"; key = "P"; action = "P"; }
    { options.desc = "Supprimer fin de ligne"; key = "D"; action = "D"; }
    { options.desc = "Joindre"; key = "S"; action = "J"; }
    { options.desc = "Aide"; key = "R"; action = "K"; }
    { options.desc = "Mode commande"; key = ":"; action = ":"; }
    { options.desc = "Supprimer"; key = "x"; action = "x"; }
    { options.desc = "Supprimer arrière"; key = "X"; action = "X"; }
    { options.desc = "Mode visuel"; key = "v"; action = "v"; }
    { options.desc = "Mode visuel ligne"; key = "V"; action = "V"; }
    { options.desc = "Poser une marque"; key = "m"; action = "m"; }
    { options.desc = "Répeter commande"; key = "."; action = "."; }

		# Opérateurs
    { options.desc = "Filtre externe"; key = "!"; action = "!"; }
    { options.desc = "Auto formatage"; key = "="; action = "="; }
    { options.desc = "Copier"; key = "y"; action = "y"; }
    { options.desc = "Supprimer"; key = "d"; action = "d"; }
    { options.desc = "Changer à eol"; key = "c"; action = "c"; }
    { options.desc = "Désindenter"; key = "<"; action = "<"; }
		{ options.desc = "Indenter"; key = ">"; action = ">"; }



    { options.desc = "test"; key = "[k"; action = "]s"; } # Remplace carac sous curseur
    { options.desc = ""; key = "]k"; action = "[s"; } # Entre dans le mode de remplacement

    { options.desc = ""; key = "gs"; action = "gk"; } # ligne écran précédant
    { options.desc = ""; key = "gr"; action = "gj"; } # linge écrant suivant 

    { options.desc = ""; key = "gb"; action = "gT"; } # onglet précédent
    { options.desc = ""; key = "gé"; action = "gt"; } # onglet suivant

    { options.desc = ""; key = "gB"; action = ":exe \"silent! tabfirst\"<CR>"; } # premier onglet
    { options.desc = ""; key = "gÉ"; action = ":exe \"silent! tablast\"<CR>"; } # deuxième onglet

    { options.desc = ""; key = "<leader>t"; action  = "<C-w>h"; } # fenêtre  gauche
    { options.desc = ""; key = "<leader>n"; action  = "<C-w>l"; } # fenetre droite
    { options.desc = ""; key = "<leader>s"; action  = "<C-w>j"; } # fenêtre bas
    { options.desc = ""; key = "<leader>r"; action  = "<C-w>k"; } # fenêtre haut
    { options.desc = ""; key = "<leader>q"; action  = "<C-w>c"; } # Fermer la fenêtre actuelle
    { options.desc = ""; key = "<leader>h"; action  = "<C-w>s"; } # Scinder la fenêtre
    { options.desc = ""; key = "<leader>v"; action  = "<C-w>v"; } # Scinder verticalement

    { options.desc = ""; mode = "o"; key = "aé"; action = "aw"; }
    { options.desc = ""; mode = "o"; key = "aÉ"; action = "aW"; }
    { options.desc = ""; mode = "o"; key = "ié"; action = "iw"; }
    { options.desc = ""; mode = "o"; key = "iÉ"; action = "aW"; }
    {  key = "0"; action  = "*"; }
    {  key = "*"; action  = "0"; }
    {  key = "\""; action  = "1"; }
    {  key = "1"; action  = "\""; }
    {  key = "«"; action  = "2"; }
    {  key = "2"; action  = "«"; }
    {  key = "»"; action  = "3"; }
    {  key = "3"; action  = "»"; }
    {  key = "("; action  = "4"; }
    {  key = ")"; action  = "5"; }
    {  key = "@"; action  = "6"; }
    {  key = "6"; action  = "@"; }
    {  key = "+"; action  = "7"; }
    {  key = "-"; action  = "8"; }
    {  key = "/"; action  = "9"; }
    {  key = "9"; action  = "/"; }
  ];
}
