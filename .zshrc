export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="archcraft"
zstyle ':omz:update' mode disabled  # disable automatic updates
source $ZSH/oh-my-zsh.sh
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

add-zsh-hook -Uz precmd rehash_precmd
alias zshconfig="geany ~/.zshrc"
alias ohmyzsh="thunar ~/.oh-my-zsh"
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# cal
cat cow | cowthink -n
# echo ""
# fastfetch --config ~/.config/fastfetch/config.jsonc --logo ~/.config/fastfetch/ascii
alias n='fastfetch'
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
alias vim='nvim'
alias n="fastfetch --config ~/.config/fastfetch/config.jsonc --logo ~/.config/fastfetch/ascii"
cat ~/.cache/wal/sequences
source ~/.cache/wal/colors-tty.sh
alias i="echo 'ios_base::sync_with_stdio(false);cin.tie(NULL);' | wl-copy"
