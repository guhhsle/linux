{ config, pkgs, ... } : {

	documentation.nixos.enable = false;
  nixpkgs.config.allowUnfree = true;
	services.printing.enable = false;
  services.flatpak.enable = true;

  environment.systemPackages = with pkgs;[
		#System
		fish flatpak zsh

		#Gnome
		nerd-fonts.jetbrains-mono
		gnome-extension-manager
		dconf dconf-editor gnome-tweaks
		wl-clipboard

		#Development
		neovim git gcc 
		
		#Flutter
		firebase-tools
		flutter openjdk17
		steam-run google-chrome
		waydroid sdkmanager

		#Media
		storj-uplink deluge
		retroarchFull vlc
	];


  services.flatpak.packages = [
		"com.github.tchx84.Flatseal"
    "app.zen_browser.zen"
		"app.drey.EarTag"
  ];

	services.xserver.excludePackages = (with pkgs; [ xterm ]);

	environment.gnome.excludePackages = (with pkgs; [
		geary gedit totem seahorse
		gnome-tour gnome-contacts
		gnome-music gnome-photos
		cheese snapshot epiphany
		gnome-shell-extensions
		gnome-maps simple-scan
		gnome-characters yelp
	]);
}
