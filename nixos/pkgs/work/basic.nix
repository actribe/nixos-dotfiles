{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    slack
    zoom-us
    mongodb-compass
    mongodb-tools
  ];
}
