{ pkgs, ... }:
{
  home.packages = with pkgs; [
    brave
    libreoffice-qt6-still
  ];
}
