alias a='nano ~/.bash_aliases && . ~/.bash_aliases'

alias ..='cd ..'
alias l='ls -a --color'
alias ll='ls -alh --color'

# love this
alias matplotlib='python3 -i -c "from datetime import datetime as dt;from datetime import timedelta as td;import matplotlib.pyplot as plt;plt.ion()"'

# network troubleshooting
alias pingg='ping 8.8.8.8'
alias pinggg='ping google.com'

# gcc include stuff
alias printIncludePath='echo | gcc -E -Wp,-v - 2>&1 | grep "^ "'

# docker (docker ps and docker container ls are same commands)
alias listRunningContainers='docker container ls -s'
alias listAllContainers='docker container ls -as'
alias killAllContainers='docker kill $(docker ps -q)'
alias removeAllContainers='docker rm $(docker ps -a -q)'

alias pruneImages='docker system prune'
alias pruneImagesHard='docker system prune -a'

alias g='/home/roman/projects/productivity/google-from-bash/google.py'
alias gpt='/home/roman/projects/productivity/openai/chatgpt.py'

alias gh-repo='gh repo create $(basename $(pwd)) --public --source=. --push --remote=upstream'
alias gh-pr='gh pr create'

alias up="sudo apt update && sudo apt upgrade -y && sudo snap refresh"

alias timesum='/home/roman/projects/productivity/timesum/timesum.py'
