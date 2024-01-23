source ~/.bash_custom
# which source-s other files including ~/scripts/functions_hosted.bash

eval "$(ssh-agent)"
ssh-add ~/.ssh/github
cd kennyAgricultureVic.github.io/ && git pull