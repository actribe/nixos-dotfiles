{pkgs, ...}: {
  home.packages = with pkgs; [
    terraform
    git
    lazygit
    awscli2
  ];
}
