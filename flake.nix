{
  inputs = {
    nixpkgs.url = "github:/nixos/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in {
        packages.hello = pkgs.hello;

        devShell = pkgs.mkShell { buildInputs = [ pkgs.hello pkgs.cowsay ]; };
      }
    );
}
