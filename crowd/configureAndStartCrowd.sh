#!/bin/bash
crowd_app_folder=/opt/crowd
crowd_home_dir=/var/crowd-home/
crowd_db="$crowd_home_dir/database/defaultdb.script"

if [ -z "${CROWD_ADMIN_EMAIL:-x}" ]; then
	echo 'Please set Environment Variable $CROWD_ADMIN_EMAIL'
	exit 1
fi

sed -i 's/{E_MAIL}/'"$CROWD_ADMIN_EMAIL"'/g' "$crowd_db"

"$crowd_app_folder"/start_crowd.sh -fg
