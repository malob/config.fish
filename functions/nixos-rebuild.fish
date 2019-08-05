function nixos-rebuild --wraps nixos-rebuild
  set fwUpdatesPath /boot/EFI/nixos/fw

  # Delete fw dir to prevent issues with nixos-rebuild command
  if test -d $fwUpdatesPath
    rm -rf $fwUpdatesPath
  end

  # Add all-hies binary cache if not installed
  if not test -f /etc/nixos/cachix/all-hies.nix
    echo \n"Cachix for all-hies not setup, setting up now ..."\n
    sudo cachix use all-hies
  end

  command sudo nixos-rebuild $argv
end
