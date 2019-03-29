function nix-rebuild-user
  pushd ~/.config/nixpkgs/pkgs/node-packages
  if not shasum --check --quiet hash
    node2nix -8 -i node-packages.json
    shasum node-packages.json > hash
  end
  popd
  nix-env -riA nixos.usersetup
end
