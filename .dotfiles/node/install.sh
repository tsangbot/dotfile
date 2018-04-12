# Check for nvm

if ! [ -f ~/.nvm/nvm.sh ]; then
  echo "  Installing nvm for you."
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash &> /tmp/nvm-install.log
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
  echo "   Installing node for you"
  nvm install node &> /tmp/nvm-node-install.log
fi

yarn global add \
babel-cli \
flow-bin \
flow-typed \
grunt \
gulp \
instant-markdown-d \
lebab \
llnode \
mocha  \
prettier \
semver \
tern
