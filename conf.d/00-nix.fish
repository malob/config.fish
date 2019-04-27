if test (nix eval nixpkgs.stdenv.isDarwin) = 'true'
  fenv source /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh
end
