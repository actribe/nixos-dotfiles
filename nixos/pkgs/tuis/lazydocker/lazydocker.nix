{ pkgs ? import <nixpkgs> {}}:


let
  version = "0.24.1";
in
pkgs.buildGoModule {
  pname = "lazydocker";
  inherit version;
  src = pkgs.fetchFromGitHub {
    owner = "jesseduffield";
    repo = "lazydocker";
    rev = "v${version}";
    sha256 = "sha256-cVjDdrxmGt+hj/WWP9B3BT739k9SSr4ryye5qWb3XNM=";
  };

  preBuild = ''
    export HOME=$(mktemp -d)
  '';

  vendorHash = null;

  meta = with pkgs.lib; {
    description = "Simple command-line snippet manager, written in Go";
    homepage = "https://github.com/jesseduffield/lazydocker";
    license = licenses.mit;
  };
}
