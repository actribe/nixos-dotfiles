{
  description = "ARCIII nixos config flake";
  inputs.nixos-hardware.url = "github:Nixos/nixos-hardware/master";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";
    hyprland.url = "github:hyprwm/Hyprland";

    hyprland-plugins = {
      url = "github:hyprwm/hyprland-plugins";
      inputs.hyprland.follows = "hyprland";
    };

    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    ghostty = {
      url = "github:ghostty-org/ghostty";
    };

    nvf.url = "github:notashelf/nvf";
    # nvf.url = "path:/home/armyc/Repos/oss/nvf";
  };

  outputs = {
    self,
    nixpkgs,
    nixos-hardware,
    ghostty,
    nvf,
    ...
  } @ inputs: {
    formatter.x86_64-linux = nixpkgs.legacyPackages.x86_64-linux.alejandra;
    nixosConfigurations = {
      fw13 = nixpkgs.lib.nixosSystem {
        specialArgs = {
          inherit inputs;
        };
        modules = [
          ./hosts/fw13/configuration.nix
          inputs.home-manager.nixosModules.default
          nixos-hardware.nixosModules.framework-13-7040-amd
          nvf.nixosModules.default
          {
            environment.systemPackages = [
              ghostty.packages.x86_64-linux.default
            ];
          }
        ];
      };
      work = nixpkgs.lib.nixosSystem {
        specialArgs = {
          inherit inputs;
        };
        modules = [
          ./hosts/work/configuration.nix
          inputs.home-manager.nixosModules.default
          nixos-hardware.nixosModules.framework-13-7040-amd
          nvf.nixosModules.default
          {
            environment.systemPackages = [
              ghostty.packages.x86_64-linux.default
            ];
          }
        ];
      };
    };
  };
}
