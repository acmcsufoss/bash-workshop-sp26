{
	description = "Nice markdown viewer for the bash workshop";

	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs";
		flake-utils.url = "github:numtide/flake-utils"; # I think using flake utils is bad practice but I'll have to look into it
	};

	outputs = { self, nixpkgs, flake-utils }: 
	flake-utils.lib.eachDefaultSystem(system:
		let 
				pkgs = nixpkgs.legacyPackages.${system};
		in {
			devShell = pkgs.mkShell {
					buildInputs = [
						pkgs.glow
					];
			};
		}
	);
	

}
