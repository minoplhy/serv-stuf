git clone https://x-access-token:$API_TOKEN_GITHUB@github.com/minoplhy/serv-stuf.git /serv-stuf
git clone -b ghpages --single-branch https://x-access-token:$API_TOKEN_GITHUB@github.com/minoplhy/serv-stuf.git /serv-stuf_pages

# Login to GitHub Cli
echo $API_TOKEN_GITHUB > token.txt
gh auth login --with-token < token.txt
rm token.txt


# Visit ghpages branch
cd /serv-stuf_pages

# Copy Static files

cp -r /serv-stuf/static/* .

# Remove old content and download new ones.

rm -rf ./content/filters
gh release download latest -R github.com/minoplhy/filters -D ./content/filters

rm -rf ./content/filters-build
gh release download "filters-build" -R github.com/minoplhy/filters -D "./content/filters-build"

# External pulling script

bash /serv-stuf/script/individual.sh

# Git Magic
git config --local user.email hurbar@aspoblourib.1w1.one
git checkout --orphan latest_branch
git add -A
git commit -am "Pulled From Source"
git branch -D ghpages
git branch -m ghpages
git push -u origin ghpages -f
