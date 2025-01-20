{
  description = "Nixos config flake";
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

  };

  outputs =
    { self, nixpkgs, nixos-hardware, ghostty, nvf, ... }@inputs:
    {
      nixosConfigurations = {
        first = nixpkgs.lib.nixosSystem {
          specialArgs = {
            inherit inputs;
          };
          modules = [
            ./hosts/first/configuration.nix
            inputs.home-manager.nixosModules.default
          ];
        };
        laptop = nixpkgs.lib.nixosSystem {
          specialArgs = {
            inherit inputs;
          };
          modules = [
            ./hosts/laptop/configuration.nix
            inputs.home-manager.nixosModules.default
          ];
        };
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
