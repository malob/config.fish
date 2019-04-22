function nixuser-simlink-apps
  for app in (find ~/Applications -name '*.app')
    if test -L $app && string match '*/nix/store/*' (readlink -f $app) > /dev/null
      rm $app
    end
  end

  for app in (find ~/.nix-profile/Applications/ -name '*.app' -exec readlink -f '{}' \;)
    ln -s $app ~/Applications/(basename $app)
  end
end
