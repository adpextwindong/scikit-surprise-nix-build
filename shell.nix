let
  pkgs = import <nixpkgs>{};
  surprise = import ./default.nix;
in
  pkgs.mkShell {
    name = "scikit-surprise-Env";
    buildInputs = [
      (with pkgs; (with python38Packages; [
        scikit-learn
        numpy
        pandas
      ]))
      surprise
    ];
  }
