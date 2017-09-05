#!/usr/bin/env bash

cp bin/blue-app.css src/main/resources/static/css/app.css
git add src/main/resources/static/css/app.css
git commit -m 'making banner blue'
git push
