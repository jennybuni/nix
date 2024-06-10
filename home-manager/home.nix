{

  imports = [
    ./zsh.nix
    ./modules/bundle.nix
  ];

  home = {
    username = "jenny";
    homeDirectory = "/home/jenny";
    stateVersion = "23.11";
  };
}
