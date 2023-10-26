alias a='nano ~/.bash_aliases && . ~/.bash_aliases'

# Files and dirs
alias ..='cd ..'
alias l='ls -a --color'
alias ll='ls -alh --color'

# Python
alias matplotlib='python3 -i -c "from datetime import datetime as dt;from datetime import timedelta as td;import matplotlib.pyplot as plt;plt.ion()"'

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

# Git
alias my-repo='git config --global user.name "Roman Pavelka" && git config --global user.email "roman.pavelka.asi@gmail.com"'

# OS
alias up="sudo apt update && sudo apt upgrade -y && sudo snap refresh"

# Shortcuts
alias g='/home/roman/projects/productivity/google-from-bash/google.py'
alias gpt='/home/roman/projects/productivity/openai/chatgpt.py'
alias timesum='/home/roman/projects/productivity/timesum/timesum.py'
alias factorio='/home/roman/factorio/bin/x64/factorio'
alias brave='brave-browser'

