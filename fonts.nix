# You could just use the google-fonts pacakge in nixpkgs, but then you
# have to pull in *all* the fonts just to use one or two.
# Defining my font derivations manually lets me use sparse checkouts to save
# time and space.
{ stdenv, fetchgit }: {
  calistoga = stdenv.mkDerivation {
    name = "CalistogaFont";
    src = fetchgit {
      url = "https://github.com/google/fonts.git";
      sparseCheckout = [ "ofl/calistoga/Calistoga-Regular.ttf" ];
      hash = "sha256-5NTmSSn1AqF632S4EHgUiGB7Aq9xM3faDKoUHxtY5qo=";
    };
    buildPhase = ''
      mkdir $out
      cp ofl/calistoga/Calistoga-Regular.ttf $out/
    '';
  };
}
