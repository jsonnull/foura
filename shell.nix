{ pkgs ? import (fetchTarball
  "https://github.com/NixOS/nixpkgs/archive/c23e1e248bb03808ff6b3389c7eab3c169c06c53.tar.gz")
  { } }:

with pkgs;

mkShell { buildInputs = [ jujutsu nodejs_23 nodePackages.pnpm ]; }
