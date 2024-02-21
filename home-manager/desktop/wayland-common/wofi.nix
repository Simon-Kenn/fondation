{config, ...}: {
  programs.wofi = {
    enable = true;

    settings = {
      image_siwe = 48;
      columns = 2;
      allow_images = true;
      insensitive = true;
      run-always_parse_args = true;
      run-exec_search = true;
      height = "20%";
      width = "25%";
    };

    style = ''
      @define-color txt #${config.colorscheme.colors.base05};
      @define-color bg #${config.colorscheme.colors.base00};
      @define-color bg1 #${config.colorscheme.colors.base03};
      @define-color accent #${config.colorscheme.colors.base0D};

      @keyframes slideIn {
         0% {
            opacity: 0;
         }

         100% {
            opacity: 0.85;
         }
      }

      @keyframes fadeIn {
         0% {
            opacity: 0;
         }

         100% {
            opacity: 0.85;
         }
      }

      window {
         margin: 0px;
         padding: 10px;
         border: 1px solid @accent;
         border-radius: 7px;
         background-color: @bg;
         animation: slideIn 0.5s ease-in-out both;
         opacity: 0.85;
      }

      #inner-box {
         margin: 5px;
         padding: 10px;
         border: none;
         background-color: @bg;
         animation: fadeIn 0.5s ease-in-out both;
      }

      #outer-box {
         margin: 5px;
         padding: 10px;
         border: none;
         background-color: @bg;
      }

      #scroll {
         margin: 0px;
         padding: 10px;
         border: none;
      }

      #input {
         margin: 5px;
         padding: 10px;
         border: none;
         color: @accent;
         background-color: @bg2;
         animation: fadeIn 0.5s ease-in-out both;
      }

      #text {
         margin: 5px;
         padding: 10px;
         border: none;
         color: @txt;
         animation: fadeIn 0.5s ease-in-out both;
      }

      #entry:selected {
        background-color: @accent;
      }

      #entry:selected #text {
         color: @txt;
      }
    '';
  };
}
