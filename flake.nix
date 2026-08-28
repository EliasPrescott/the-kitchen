{
  description = "My development packages";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = inputs: {
    packages = builtins.mapAttrs (system: pkgs: rec {
      fonts = import ./fonts.nix pkgs;
      resume = pkgs.stdenv.mkDerivation {
        name = "elias-prescott-resume";
        src = ./documents;
        buildPhase = ''
          runHook preBuild

          mkdir $out
          ${pkgs.typst}/bin/typst compile \
            --creation-timestamp "${builtins.toString inputs.self.lastModified}" \
            --ignore-system-fonts \
            --font-path "${fonts.calistoga}" \
            resume.typ \
            $out/EliasPrescottResume.pdf

          runHook postBuild
        '';
      };
    }) inputs.nixpkgs.legacyPackages;
  };
}
