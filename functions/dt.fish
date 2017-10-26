function dt
  set base_url 'https://miri.donortools.com/personas?search='
  set search_term (string replace -a ' ' + $argv)
  open (string join '' $base_url $search_term)
end
