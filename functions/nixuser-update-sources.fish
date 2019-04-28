function nixuser-update-sources
  nix-channel --update
  pushd ~/.config/nixpkgs/pkgs/node-packages
  echo \n"Updating Node package nix expressions ..."\n
  node2nix --nodejs-10 -i node-packages.json
  popd
  pushd ~/.config/nixpkgs/pkgs/ruby-gems/
  echo \n"Updating Ruby Gems nix expressions ..."\n
  bundix --magic
  popd
  pushd ~/.config/nixpkgs/pkgs/python-packages
  echo \n"Updating Python package nix expressions ..."\n
  pypi2nix --python-version 3.6 --requirements requirements.txt
  popd
end
