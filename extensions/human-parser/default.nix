{ buildExtension, fetchFromGitHub, lib, python3 }:

buildExtension {
  name = "human-parser";
  version = "8.3.1";

  src = fetchFromGitHub {
    owner = "cozymantis";
    repo = "human-parser-comfyui-node";
    fetchSubmodules = false;
    rev = "870a3515f30cbbbdc3b46a8b9df160a4504228c8";
    hash = "sha256-w2xKtBFITtGehuRV63er2t44fjeaX4JI6epCYP83k3s=";
  };

  propagatedBuildInputs = [
    python3.pkgs.numpy
    python3.pkgs.opencv-python
    python3.pkgs.ninja
    python3.pkgs.torch
  ];

  meta = {
    license = lib.licenses.gpl3;
  };
}
