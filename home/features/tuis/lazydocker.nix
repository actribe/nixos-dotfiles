{ pkgs, ... }:
{
  home.packages = [
    (pkgs.callPackage ../../../nixos/pkgs/tuis/lazydocker/lazydocker.nix { })
  ];
}
