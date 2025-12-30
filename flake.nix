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
        fs = lib.fileset;
        neovim-config = import ./packages/neovim.nix {
          inherit nixpkgs system;
        };
      in {
        # This is my personal configuration of Neovim.
        # I'm exposing it as a standalone package to make it easier for others to try.
        configs.neovim = neovim-config;
        packages.neovim = nixvim.legacyPackages.${system}.makeNixvim neovim-config;

        packages.resume = pkgs.stdenv.mkDerivation {
          name = "EliasPrescottResume";
          src = fs.toSource {
            root = ./documents;
            fileset = ./documents/resume.typ;
          };
          buildPhase = ''
            mkdir $out
            ${pkgs.typst}/bin/typst compile \
              --ignore-system-fonts \
              --font-path "${pkgs.google-fonts}/share/fonts/truetype" \
              resume.typ \
              $out/EliasPrescottResume.pdf
          '';
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
