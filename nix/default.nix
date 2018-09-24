{ nixpkgsSrc ? ./nixpkgs }:
import (import nixpkgsSrc) {
  config = { };
  overlays = [
    (self: super: {
      jetbrains = super.jetbrains // {
        idea-community = super.jetbrains.idea-community.overrideAttrs (attrs: rec {
          name = "idea-community-${version}";
          version = "2018.1.6";
          src = super.fetchurl {
            url = "https://download.jetbrains.com/idea/ideaIC-${version}.tar.gz";
            sha256 = "14y3rlka21rwirlfnd6akpgz4rzplsxkzqrlgk4ccn5w4rm78z6a";
          };
        });
      };
    })
  ];
}
