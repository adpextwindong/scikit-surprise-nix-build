with import <nixpkgs> {};
with pkgs.python38Packages;

buildPythonPackage rec {
  pname = "scikit-surprise";
  version = "1.1.1";

  src = fetchPypi {
    inherit pname version;
    sha256 = "269ce1f74fd4639e66566b733ea211b05611c257e8a691471a0fbd7d9a7987b7";
  };
  nativeBuildInputs = [
    cython
  ];
  propagatedBuildInputs = [
    numpy
    six
    scipy
    joblib
  ];

  doCheck = false;
}
