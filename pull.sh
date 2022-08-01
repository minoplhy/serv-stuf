git clone https://x-access-token:$API_TOKEN_GITHUB@github.com/minoplhy/serv-stuf.git /srvtr
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg 
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install gh
cd /srvtr
echo $API_TOKEN_GITHUB > token.txt
gh auth login --with-token < token.txt
rm token.txt
rm -rf ./content/filters
gh release download latest -R github.com/minoplhy/filters -D ./content/filters
rm -rf ./content/filters-build
gh release download "filters-build" -R github.com/minoplhy/filters -D "./content/filters-build"
bash ./content/resources/individual.sh
git config --local user.email hurbar@aspoblourib.1w1.one
git checkout --orphan latest_branch
git add -A
git commit -am "Pulled From Source"
git branch -D main
git branch -m main
git push -u origin main -f
