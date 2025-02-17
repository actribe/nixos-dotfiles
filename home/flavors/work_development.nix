{pkgs, ...}: {
  imports = [
    ../features/development/basic.nix
    ../features/development/python.nix
    ../features/development/zig.nix
    ../features/development/nodejs.nix
    ../features/development/lua.nix
    ../features/development/devops.nix
  ];
}
