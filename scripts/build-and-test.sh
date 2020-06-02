#!/usr/bin/env bash

################################################
# This will be replaced by actual build and test
###############################################

# rsync -r . build --exclude .git scripts 
# rsync -avz --exclude .git --exclude scripts --exclude .idea --exclude node_modules --exclude bitbucket-pipelines.yml . build
apt-get update 
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm install node
npm install
rm -rf dist
npm run build