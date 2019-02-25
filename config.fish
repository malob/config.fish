# Aliases
alias ghci="stack ghci"
alias ghc="stack ghc"
alias cat="bat"
alias ping="prettyping"
alias preview="fzf --preview 'bat --color \"always\" {}'"

# Theme settings
set -gx theme_nerd_fonts yes
set -gx theme_color_scheme solarized-dark

# Other
set -gx EDITOR nvr -o
set -gx fish_key_bindings fish_vi_key_bindings
set -gx HOMEBREW_NO_GITHUB_API 1

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.fish ]; and . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.fish
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.fish ]; and . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.fish

# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.fish ]; and . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.fish
