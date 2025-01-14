{ fetchFromGitHub, lib, pkgs, ... }:
{
  home.file.".local/share/nvim/lazy".source = pkgs.fetchFromGitHub {
      owner = "folke";
      repo = "tokyonight.nvim";
      rev = "775f82f08a3d1fb55a37fc6d3a4ab10cd7ed8a10";
      sha256 = "1F8qJIt0YYCP4X/P54Z8By8f9/pp0YvAE6nISuDHhCs="
  };
}
