{pkgs ? import <nixpkgs> {}}: {
  eldritch-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "eldritch.nvim";
    version = "2025-01-15";
    src = pkgs.fetchFromGitHub {
      owner = "eldritch-theme";
      repo = "eldritch.nvim";
      rev = "adedead3423c58cc2e2ebf30001fe4055ad0e416";
      sha256 = "";
    };
  };
}
