set -g fish_term24bit 1
set fish_greeting ''

###########
# Aliases #
###########

alias cat="bat"
alias g="git"

if test -n "$NVIM_LISTEN_ADDRESS"
  alias nh "nvr -o"
  alias nv "nvr -O"
  alias nt "nvr --remote-tab"
  alias n "nvr"
  alias neovim 'command nvim'
  alias nvim "echo 'You\'re already in nvim. Consider using n, nh, nv, or nt instead. Use \'neovim\' to force.'"
else
  alias n 'nvim'
end

###################
# Prompt settings #
###################

set -g theme_nerd_fonts yes
set -g theme_color_scheme solarized-dark
set -g theme_newline_cursor yes
set -g theme_newline_prompt "->> "
set -g theme_date_format "+%H:%M"

##################
# Color settings #
##################

# NeoSolarized colors
set -l base03 002b36
set -l base02 073642
set -l base01 586e75
set -l base00 657b83
set -l base0 839496
set -l base1 93a1a1
set -l base2 eee8d5
set -l base3 fdf6e3
set -l yellow b58900
set -l orange cb4b16
set -l red dc322f
set -l magenta d33682
set -l violet 6c71c4
set -l blue 268bd2
set -l cyan 2aa198
set -l green 719e07

# Colors for text in commands
set -g fish_color_command $base0 --bold  # color of commands
set -g fish_color_param $base0           # color of regular command parameters
set -g fish_color_autosuggestion $base01 # color of autosuggestions
set -g fish_color_comment $base01        # color of code comments
set -g fish_color_error $red             # color of potential errors

# Colors for special characters in commands
set -g fish_color_escape $base01      # color of character escapes like '\n' and and '\x70'
set -g fish_color_quote $cyan         # color of quoted blocks of text
set -g fish_color_redirection $violet # color of IO redirections
set -g fish_color_end $blue           # color of process separators like ';' and '&'
set -g fish_color_operator $yellow    # color of parameter expansion operators like '*' and '~'
set -g fish_color_cancel $red --bold  # color of the '^C' indicator on a canceled commands

# Highlights
set -g fish_color_match $red --backgroud $base01        # color of matching parenthesis
set -g fish_color_selection $base03 --background $base0 # color of selected text (in fish vi mode)

# Colors for pager
set -g fish_pager_color_prefix $base0 --bold # color of the prefix string
set -g fish_pager_color_completion $base0    # color of the completion itself
set -g fish_pager_color_description $base01  # color of the completion description
set -g fish_pager_color_progress $base2 --background=$cyan

# overwritten by prompt theme
# fish_color_cwd, the color of the current working directory in the default prompt
# fish_color_user, the color of the current username in some fish default prompts
# fish_color_host, the color of the current host system in some fish default prompts

#########
# Other #
#########

set -x EDITOR "nvr --remote-silent"
