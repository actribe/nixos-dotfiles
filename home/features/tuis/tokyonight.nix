{ fetchFromGitHub, lib, pkgs, ... }:
{
  tokyonight = pkgs.stdenv.mkDerivation {
  name = "tokyonight.nvim";
  src = pkgs.fetchFromGitHub {
    owner = "folke";
    repo = "tokyonight.nvim";
    rev = "775f82f08a3d1fb55a37fc6d3a4ab10cd7ed8a10";
  };
  };
}
