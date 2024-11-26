alias a='nano ~/.bash_aliases && . ~/.bash_aliases'

# Files and dirs
alias ..='cd ..'
alias l='ls -a --color'
alias ll='ls -alh --color'

# Python
alias matplotlib='python3 -i -c "from datetime import datetime as dt;from datetime import timedelta as td;import matplotlib.pyplot as plt;plt.ion()"'
alias p='python3'

# network troubleshooting
alias pingg='ping 8.8.8.8'
alias pinggg='ping google.com'
alias wifiscan='nmcli dev wifi list --rescan yes'

# gcc include stuff
alias printIncludePath='echo | gcc -E -Wp,-v - 2>&1 | grep "^ "'

# docker (docker ps and docker container ls are same commands)
alias listRunningContainers='docker container ls -s'
alias listAllContainers='docker container ls -as'
alias killAllContainers='docker kill $(docker ps -q)'
alias removeAllContainers='docker rm $(docker ps -a -q)'
alias pruneImages='docker system prune'
alias pruneImagesHard='docker system prune -a'

# Git
alias my-repo='git config user.name "Roman Pavelka" && git config user.email "roman.pavelka.asi@gmail.com"'
alias work-repo='git config user.name "Roman Pavelka" && git config user.email "roman.pavelka@advantech.cz"'
alias syncWithUpstream='git checkout main && git fetch upstream && git merge upstream/main && git push origin main'

# GitHub
alias gh-repo-lazy='git init && git add . && git commit && gh repo create $(basename $(pwd)) --public --source=. --push --remote=upstream'
alias gh-repo='gh repo create $(basename $(pwd)) --public --source=. --push --remote=origin'
alias gh-pr='gh pr create'

# OS
alias up="sudo apt update && sudo apt upgrade -y"

# Shortcuts
alias g='/home/roman/projects/productivity/google-from-bash/google.py'
alias gpt='/home/roman/projects/chatgpt-gui/cli.py'
alias gpt-gui='/home/roman/projects/chatgpt-gui/gui.py'
alias whisper='/home/roman/projects/chatgpt-gui/whisper.py'
alias yta='yt-dlp -x --audio-format mp3'
alias factorio='/usr/share/factorio/bin/x64/factorio'
alias brave='brave-browser'
alias cam='kamoso'
alias cut_audio='/home/roman/projects/productivity/cut_audio.sh'
alias timesum='/home/roman/projects/productivity/timesum/timesum.py'
alias wireshark="sudo /usr/bin/wireshark"
alias usb0-115200-8-n-1="stty -F /dev/ttyUSB0 115200 cs8 -cstopb -parenb"

# Nice colors for terminal
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'

ON_RED='\033[41m'

NO_COLOR='\033[0m'

alias bang='echo -e "${ON_RED}BANG!${NO_COLOR}"'

suspend_in () {
  sleep "$1"m && systemctl suspend -i
}

# Irrelevant outside single machine or environment
if [ -f ~/.local_aliases ]; then
    . ~/.local_aliases
fi
