{ pkgs ? import <nixpkgs> { } }:
with pkgs;
mkShell {
  buildInputs = [
    nixpkgs-fmt
    esphome
    sops
    ssh-to-age
  ];

  shellHook = ''
    sops -d secrets.sops.yaml > secrets.yaml
  '';
}
