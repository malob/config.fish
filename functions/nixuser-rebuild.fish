function nixuser-rebuild
  if test "$argv[2]" = "--all"
    nixuser-update-sources
  end
  nix-env -riA nixos.$argv[1]
end
