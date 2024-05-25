{
  description = "A flake for a development environment with Yarn and Node.js v20";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs";

  outputs = { self, nixpkgs }: {
    devShells = {
      default = import nixpkgs {
        system = "x86_64-linux"; # Adjust this to your system architecture if necessary
      } .mkShell {
        buildInputs = [
          nixpkgs.nodejs-20_x
          nixpkgs.yarn
        ];
      };
    };
  };
}
