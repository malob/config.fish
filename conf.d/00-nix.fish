if test ! -e /etc/NIXOS
  set -pg fish_function_path ~/.nix-profile/share/fish-foreign-env/functions
  fenv source /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh
end
