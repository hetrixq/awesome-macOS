# awesome-macOS - my attempt to make MacOS more convenient

Prerequisites:
- macOS 14+ (Apple Silicon recommended)
- Xcode Command Line Tools:
  ```sh
  xcode-select --install
  ```

### Homebrew:
- Installation
  ```
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
  ```

Global Homebrew Tweaks:

```sh
export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_MAKE_JOBS=$(sysctl -n hw.ncpu)
```

Shell Customizations:

```zsh
brew install nano bat htop btop tmux tree watch rsync fastfetch zsh-autosuggestions zsh-syntax-highlighting
```

.zshrc Config

```zsh

cat > ~/.zshrc << 'EOF'
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"

export EDITOR="/opt/homebrew/bin/nano"
export VISUAL="/opt/homebrew/bin/nano"

ZSH_AUTOSUGGEST_STRATEGY=(completion)

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias cat="bat"

HISTSIZE=100000
SAVEHIST=100000
setopt inc_append_history
setopt share_history

export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_MAKE_JOBS=$(sysctl -n hw.ncpu)

setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_SPACE
EOF
```

.nanorc Config

```zsh

cat > ~/.nanorc << 'EOF'
set linenumbers
set tabsize 2
set softwrap
set mouse
set indicator
EOF
```

`exec zsh`


### Disable the Character Accent Selection (logout\reboot required)
```defaults write -g ApplePressAndHoldEnabled -bool false```

### Reset Spotlight Search Window Position
```defaults delete com.apple.Spotlight```

### Clean Cached Files
```sudo purge```

### Executing Privileged Commands Without Entering A Password
```sudo visudo /etc/sudoers.d/010_NICKNAME-nopasswd```

```NICKNAME ALL=(ALL) NOPASSWD: ALL```

where `NICKNAME` should be replaced with your user nickname




# List of Installed Applications

1. [AdGuard for Safari](https://adguard.com/)
2. [Adobe Acrobat DC](https://get.adobe.com/reader/)
3. [AmneziaVPN](https://amnezia-vpn.org/)
4. [Amphetamine](https://apps.apple.com/us/app/amphetamine/id937984704)
5. [Angry IP Scanner](https://angryip.org/)
6. [AppCleaner](https://freemacsoft.net/appcleaner/)
7. [coconutBattery](https://www.coconut-flavour.com/coconutbattery/)
8. [Discord](https://discord.com/)
9. [Docker](https://www.docker.com/)
10. [GIMP](https://www.gimp.org/)
11. [Mac Mouse Fix](https://macmousefix.com/)  
12. Microsoft Office (from App Store)
13. [Minecraft Launcher](https://www.minecraft.net/)
14. [OBS](https://obsproject.com/)
15. [OneDrive](https://www.microsoft.com/en-us/microsoft-365/onedrive/online-cloud-storage)
16. [OpenMTP](https://openmtp.ganeshrvel.com/)
17. [Parallels Desktop](https://appstorrent.ru/61-parallels-desktop.html)
18. [Rectangle](https://rectangleapp.com/)
19. [SponsorBlock](https://sponsor.ajay.app/)
20. [Spotify](https://www.spotify.com/)
21. [Telegram](https://telegram.org/)
22. [Termius](https://termius.com/)
23. [VeraCrypt](https://www.veracrypt.fr/)  
24. [Visual Studio Code](https://code.visualstudio.com/)
25. [WireGuard](https://www.wireguard.com/)
26. [Zoom](https://zoom.us/)  
27. [Яндекс Музыка](https://music.yandex.ru/)  
