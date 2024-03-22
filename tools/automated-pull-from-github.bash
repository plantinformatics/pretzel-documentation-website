source ~/.bash_custom
# which source-s other files including ~/scripts/functions_hosted.bash

if [ -d "~AGG_pretzel/AGG-pretzel-documentation-website/tools/logs" ];
    then mkdir -p ~/AGG-pretzel-documentation-website/tools/logs
fi

eval "$(ssh-agent)"
ssh-add ~/.ssh/keys/github
cd ~/AGG_pretzel/AGG-pretzel-documentation-website/ && git pull
