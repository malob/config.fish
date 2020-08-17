if test ! -e /etc/NIXOS
  set -pg fish_function_path ~/.nix-profile/share/fish-foreign-env/functions
  fenv source ~/.nix-profile/etc/profile.d/nix-daemon.sh
end

if test -e /nix
   set -pgx NIX_PATH nixpkgs=$HOME/.nix-defexpr/nixpkgs.nix
end
