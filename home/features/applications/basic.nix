{ pkgs, ... }:
{
  home.packages = with pkgs; [
    brave
    libre-office-qt6-still
  ];
}
