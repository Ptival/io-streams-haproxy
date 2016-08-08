{ nixpkgs ? import <nixpkgs> {}, compiler }:
nixpkgs.pkgs.haskell.packages.${compiler}.callPackage ./io-streams-haproxy.nix {}

