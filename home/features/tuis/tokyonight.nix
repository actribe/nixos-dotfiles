{ pkgs, ... }:
{
  home.file.".local/share/nvim/nix/tokyonight.nvim/".source = pkgs.fetchFromGitHub {
    owner = "folke";
    repo = "tokyonight.nvim";
    rev = "775f82f08a3d1fb55a37fc6d3a4ab10cd7ed8a10";
    sha256 = "1F8qJItOYYCP4X/P54Z8By8f9/ppOYvAE6nISuDHhCs=";
  };
}
