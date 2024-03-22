# Readme

### Setup 
Run the following in the directory where you have pulled the repo.

    docker run --rm -it -v ${PWD}:/docs squidfunk/mkdocs-material new .

For it to track edits, add this into cron tasks

>     crontab -e    
    */29 * * * * bash -c 'DIR=~/AGG_pretzel/AGG-pretzel-documentation-website/tools; [ ! -d $DIR/logs ] && mkdir $DIR/logs; bash $DIR/automated-pull-from-github.bash >> $DIR/logs/update.log'
