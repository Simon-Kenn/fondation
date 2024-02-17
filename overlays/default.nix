{ inputs, ...}: {
	neorg = inputs.neorg-overlay.overlays.default;
	neovim = inputs.neovim-nightly-overlay.overlay;
}
