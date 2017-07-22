#!/bin/bash
# Building the environment for only 1st time
# nvm install v5.11.1

echo -n "Enter your code name for gitbook: "
read OSTINATO_CODE_NAME
echo -n "Enter the English title: "
read OSTINATO_TITLE_EN
echo -n "输入中文标题："
read OSTINATO_TITLE_CN

OSTINATO_CODE_NAME="${OSTINATO_CODE_NAME// }"
if [[ -z OSTINATO_CODE_NAME ]]
then
  echo "You must enter a NonEmpty code name."
  exit 1
else
  # replace the code name
  
  # trim the title_en
  OSTINATO_TITLE_EN="${OSTINATO_TITLE_EN// }"
  OSTINATO_TITLE_CN="${OSTINATO_TITLE_CN// }"
  if [[ ! -z OSTINATO_CODE_NAME ]]

  fi
fi

npm install -g gitbook-cli grunt-cli
npm install
gitbook install && gitbook build
