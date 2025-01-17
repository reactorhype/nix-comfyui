{ buildExtension, fetchFromGitHub, lib, python3 }:

buildExtension {
  name = "human-parser";
  version = "8.3.1";

  src = fetchFromGitHub {
    owner = "storyicon";
    repo = "comfyui_segment_anything";
    fetchSubmodules = false;
    rev = "ab6395596399d5048639cdab7e44ec9fae857a93";
    hash = "sha256-0000000000000000000000000000000000000000000=";
  };

  propagatedBuildInputs = [
    python3.pkgs.segment-anything
    python3.pkgs.timm
    python3.pkgs.addict
    python3.pkgs.yapf
  ];

  meta = {
    license = lib.licenses.gpl3;
  };
}
