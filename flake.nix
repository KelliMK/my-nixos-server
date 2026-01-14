{
  description = "my first flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: {
  	nixosConfigurations.nixos-files = nixpkgs.lib.nixosSystem {
  		modules = [ 
  			./configuration.nix 
  		];
  	};
  };

}

