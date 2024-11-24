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

# GitHub
alias gh-repo-lazy='git init && git add . && git commit && gh repo create $(basename $(pwd)) --public --source=. --push --remote=upstream'
alias gh-repo='gh repo create $(basename $(pwd)) --public --source=. --push --remote=origin'
alias gh-pr='gh pr create'
alias privaterepo='git config user.email "roman.pavelka.asi@gmail.com"'
alias workrepo='git config user.email "roman.pavelka@advantech.com"'

alias syncFromUpstream='git checkout main && git fetch upstream && git merge upstream/main && git push origin main'

# Git
alias my-repo='git config --global user.name "Roman Pavelka" && git config --global user.email "roman.pavelka.asi@gmail.com"'

# OS
alias up="sudo apt update && sudo apt upgrade -y && sudo snap refresh"

# Shortcuts
alias g='/home/roman/projects/productivity/google-from-bash/google.py'
alias gpt='/home/roman/projects/chatgpt-gui/cli.py'
alias gpt-gui='/home/roman/projects/chatgpt-gui/gui.py'
alias whisper='/home/roman/projects/chatgpt-gui/whisper.py'
alias yta='yt-dlp -x --audio-format mp3'

alias timesum='/home/roman/projects/productivity/timesum/timesum.py'
alias factorio='/usr/share/factorio/bin/x64/factorio'
alias brave='brave-browser'

# Serial link
alias usb0-115200-8-n-1="stty -F /dev/ttyUSB0 115200 cs8 -cstopb -parenb"

alias wireshark="sudo /usr/bin/wireshark"
suspend_in () {
  sleep "$1"m && systemctl suspend -i
}

alias cam='kamoso'
