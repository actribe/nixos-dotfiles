{ pkgs, ... }:
{
  imports = [
    ../features/development/python.nix
    ../features/development/nodejs.nix
    ../features/development/lua.nix
    ../features/development/devops.nix
  ];
}
