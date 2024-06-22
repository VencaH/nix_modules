{ lib
, stdenv
, fetchFromGitHub
, nushell
, fzf
, makeWrapper
}:

  stdenv.mkDerivation {
    pname = "fzf-open-file";
    version = "0.0.1";
    src = fetchFromGitHub {
      owner = "VencaH";
      repo = "util_scripts";
      rev = "refs/tags/0.0.1";
      sha256 = "1MXbCKOoX3Bz9O7hwTBi+yMAU7wdtco3FfI+u8ncTOE=";
    };
    buildInputs = [ nushell fzf ];
    nativeBuildInputs = [ makeWrapper ];
    installPhase = ''
      mkdir -p $out/bin
      cp fo.nu $out/bin/fo
      wrapProgram $out/bin/fo \
        --prefix PATH: ${lib.makeBinPath [ nushell fzf ]}
    '';
  }
