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
      rev = "0edc5b3328428f52c6df57b9df32b2a867ecaad2";
      hash = "";
    };
    buildPhase = ''
      mkdir $out
      cp ofl/calistoga/Calistoga-Regular.ttf $out/
    '';
  };
}
