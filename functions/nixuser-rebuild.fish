function nixuser-rebuild
  if test "$argv[1]" = '--all'
    nixuser-update-sources
  end
  if test (nix eval nixpkgs.stdenv.isDarwin) = 'true'
    nix-env -riA nixpkgs.myMacosEnv
    nixuser-simlink-apps
  else
    nix-env -riA nixos.myLinuxEnv
  end
end
