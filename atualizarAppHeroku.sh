#!/bin/bash
git add . -f
git commit -m "Deploy de atualizacao"
git push heroku master
heroku logs --tail
