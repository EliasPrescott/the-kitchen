{
  description = "My development packages";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, flake-utils, nixvim }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        lib = nixpkgs.lib;
        pkgs = nixpkgs.legacyPackages.${system};
      in {
        # This is my personal configuration of Neovim.
        # I'm exposing it as a standalone package to make it easier for others to try.
        packages.neovim = import ./packages/neovim.nix {
          inherit nixpkgs nixvim system;
        };

        # Most of my development environment wrapped up in a shell
        devShells.default = pkgs.mkShell {
          packages = [
            # Dev Tools
            pkgs.git
            pkgs.lazygit
            pkgs.ripgrep
            self.packages.${system}.neovim

            # Programming Runtimes
            pkgs.go
            pkgs.nodejs
            pkgs.dotnet-sdk_10
            pkgs.cargo pkgs.rustc pkgs.rustfmt pkgs.clippy
          ];
        };
      }
    );
}
