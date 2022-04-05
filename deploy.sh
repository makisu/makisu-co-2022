#!/usr/bin/env sh

set -e

if [ -d "dist" ]; then rm -Rf dist; fi

npm run build

cd dist

# uncomment the below line and update it appropriately if using a custom domain
echo "makisu.co" > CNAME

git init
git add -A
git checkout -b gh-pages
git commit -m 'Deploy' --no-verify

# update the below line with your repository and preferred branches
git push -f git@github.com:makisu/makisu-co-2022.git gh-pages

cd -
