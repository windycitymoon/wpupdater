#! /bin/bash
set -e

clear
NOW=$(date +"%d-%b-%Y")
echo "Hello $USER, let's update this WordPress install!"

#How to store bash to array
#http://www.linuxquestions.org/questions/linux-general-1/store-multi-line-output-into-an-array-in-a-linux-bash-script-706878/

#Create a new time stamped branch
$(wp status) || { echo "command failed; please execute this in a valid WP root directory"; exit 1; }

# if $(wp core is-installed); then
#   git pull
#   git checkout -b $NOW-wp-updates
# fi

git pull
git checkout -b $NOW-wp-updates

#Returns array of plugins needing updates
WP_LIST=( $(wp plugin list --field=name --update=available))

#Returns count of plugins needing updates
UPDATE_COUNT=$(wp plugin list --update=available --format=count)

#Set incrementer
i="0"

while [ $i -lt $UPDATE_COUNT ]
	do
		wp plugin update ${WP_LIST[$i]}
		git add --all
		git commit -m "update plugin ${WP_LIST[$i]}"
		i=$(( $i + 1 ))
done

#Update Factory Themes
wp theme update --all
git add -A
git commit -m "update default themes"

#Update to latest WP Core Version
wp core update
git add --all
git commit -m "update WP Core to latest version"

echo "WPupdater script is now complete!"
