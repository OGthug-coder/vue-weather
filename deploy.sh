#!/usr/bin/env sh

set -e

npm run build

cd dist

git init
git add -A
git commit -m 'deploy'
git push -f git@github.com:OGthug-coder/vue-weather.git master:gh-pages

cd -