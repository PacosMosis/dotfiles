if status is-interactive
	set fish_greeting ""
	set -gx TERM xterm-256color

    # Aliases
    alias ls "exa -h --icons --git"
    alias vim "nvim"
end
