#!/usr/bin/env sh

# the first argument is going to be the folder to build!

# using the deploy script from Vue CLI

# abort on errors
set -e

# build (assumes the default directory has been specified correctly!)
make clean src=$1
make src=$1

# navigate into the build output directory
cd $1/html

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:dev10110/dev10110.github.io.git master:gh-pages

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:dev10110/jemdoc_mathjax_materialize.git master:gh-pages

cd -