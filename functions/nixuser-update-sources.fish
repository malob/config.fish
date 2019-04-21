function nixuser-update-sources
  nix-channel --update
  pushd ~/.config/nixpkgs/pkgs/node-packages
  echo "Updating Node packages ..."
  node2nix --nodejs-10 -i node-packages.json
  popd
  pushd ~/.config/nixpkgs/pkgs/ruby-gems/
  echo "Updating Ruby Gems ..."
  bundix --magic > /dev/null
  popd
end
