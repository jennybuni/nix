{ inputs, ...}: {
  imports = [
    ./hardware-configuration.nix
    ./packages.nix
    ./modules/bundle.nix
  ];

  disabledModules = [
    ./modules/xserver.nix
  ];

#  nixpkgs.overlays = [ inputs.polymc.overlay ];

services.greetd = {
    enable = true;
    settings = rec {
     initial_session = {
      command = ''${pkgs.hyprland}/bin/Hyprland'' ;
    user = "jenny" ;
    };
    default_session = initial_session;

   };
}
  networking.hostName = "nixos" ; # Define your hostname.

 # time.timeZone = ""; # Set your time zone.
  services.gnome.gnome-keyring.enable = true;
  i18n.defaultLocale = "en_GB.UTF-8"; # Select internationalisation properties.

  nix.settings.experimental-features = [ "nix-command" "flakes" ]; # Enabling flakes

  system.stateVersion = "23.05"; # Don't change it bro
}
