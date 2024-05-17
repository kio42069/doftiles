export ZSH=$HOME/.oh-my-zsh
#ZSH_THEME="archcraft"
ZSH_THEME="af-magic"
# Uncomment one of the following lines to change the auto-update behavior
zstyle ':omz:update' mode disabled  # disable automatic updates
source $ZSH/oh-my-zsh.sh
# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi
zshcache_time="$(date +%s%N)"
autoload -Uz add-zsh-hook
rehash_precmd() {
  if [[ -a /var/cache/zsh/pacman ]]; then
    local paccache_time="$(date -r /var/cache/zsh/pacman +%s%N)"
    if (( zshcache_time < paccache_time )); then
      rehash
      zshcache_time="$paccache_time"
    fi
  fi
}
#[[keyboard.bindings]]
#action = "ScrollPageDown"
#key = "PageDown"
#mode = "~Alt"
#mods = "None"

add-zsh-hook -Uz precmd rehash_precmd
alias py='python'
alias e='exit'
alias code='code --ozone-platform=wayland && exit'
alias pi='ssh kid@192.168.239.238'
alias btop='btop --utf-force'
alias pls='sudo'
alias vpn='sudo openfortivpn vpn.iiitd.edu.in:10443 --username=surat22517'
alias arv='ssh arv@192.168.40.229'
alias rcht='ssh rachit@192.168.42.104'
alias nm='sudo iwlist wlan0 scan && nmtui'
alias cim='vim'
alias hypr='cd ~/.config/hypr && vim hyprland.conf'
alias zsh='vim ~/.zshrc'
alias cls='clear'
alias n="fastfetch --config ~/.config/fastfetch/config.jsonc --logo ~/.config/fastfetch/ascii"
