#!/bin/bash
APP=$1
if [ $APP ]
then
    heroku create $APP
    git add . -f
    git commit -m "Deploy ${APP}"
    git push heroku master
    heroku ps:scale web=1
    heroku logs --tail
else
    echo "Informar nome do app no argumento."
fi
