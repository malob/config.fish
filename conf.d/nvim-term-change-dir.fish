function nvim-term-change-dir -v PWD
  if test -n "$NVIM_LISTEN_ADDRESS"
    nvr -c "lchd $PWD" -c "execute 'file term: $PWD'" -c "AirlineRefresh!" &
  end
end
