{pkgs, ... }:
{
  home.packages = with pkgs; [
    terraform
    docker
    git
    lazygit
    awscli2
  ];
}
