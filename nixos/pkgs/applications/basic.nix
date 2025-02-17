{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    brave
    libreoffice-qt6-still
  ];
}
