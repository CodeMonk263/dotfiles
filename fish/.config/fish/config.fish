# Remove shell greeting
set fish_greeting
# force tmux to be 256color and unicode compatible
alias tmux="tmux -u -2"
alias clip='xsel --clipboard --input'

if test -d "$HOME/bin";
    set -x PATH $PATH "$HOME/bin/"
end

if test -d "$HOME/.local/bin";
    set -x PATH $PATH "$HOME/bin"
end
if test -d "$HOME/bin";
    set -x PATH $PATH "$HOME/.local/bin"
end
if test -d "$HOME/.cargo/bin";
    set -x PATH $PATH "$HOME/.cargo/bin"
end
if test -d "$HOME/go/bin";
    set -x PATH $PATH "$HOME/go/bin"
end
if test -d "$HOME/.npm-global/bin";
    set -x PATH $PATH "$HOME/.npm-global/bin"
end
if test -d "$HOME/.config/composer/vendor/bin";
    set -x PATH $PATH "$HOME/.config/composer/vendor/bin"
end
if test -d "$HOME/.composer/vendor/bin";
    set -x PATH $PATH "$HOME/.composer/vendor/bin"
end
# Set default editor
set -gx EDITOR vim
# Use starship theme
# Check if exa/bat are installed
if type "exa" >/dev/null;
    alias ls="exa --icons"
end
if type "bat" >/dev/null;
    alias cat=bat
end

if functions -q bax
    bax 'eval "$(symfony-autocomplete)"'
end

alias sc="symfony console"

# Set nord theme
set -U fish_color_normal normal
set -U fish_color_command 81a1c1
set -U fish_color_quote a3be8c
set -U fish_color_redirection b48ead
set -U fish_color_end 88c0d0
set -U fish_color_error ebcb8b
set -U fish_color_param eceff4
set -U fish_color_selection white --bold --background=brblack
set -U fish_color_search_match bryellow --background=brblack
set -U fish_color_history_current --bold
set -U fish_color_operator 00a6b2
set -U fish_color_escape 00a6b2
set -U fish_color_cwd green
set -U fish_color_cwd_root red
set -U fish_color_valid_path --underline
set -U fish_color_autosuggestion 4c566a
set -U fish_color_user brgreen
set -U fish_color_host normal
set -U fish_color_cancel -r
set -U fish_pager_color_completion normal
set -U fish_pager_color_description B3A06D yellow
set -U fish_pager_color_prefix white --bold --underline
set -U fish_pager_color_progress brwhite --background=cyan

export ANSIBLE_COW_SELECTION=random
export ANSIBLE_NOCOWS=1
export LESSCHARSET=utf-8
# Starship!
starship init fish | source
