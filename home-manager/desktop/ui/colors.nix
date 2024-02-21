{
  inputs,
  ...
}: {
  imports = [
    inputs.nix-colors.homeManagerModule
  ];

  colorscheme = inputs.nix-colors.colorSchemes.catppuccin-mocha;
}
