#!/bin/bash

if [[ -z "${browshot_key}" ]]; then
    echo 
    echo "ERROR: Need to set the environment variable 'browshot_key'"
    echo
    exit 1
fi

function get_screenshot() {
	local url=$1
	local file=$2
	curl -L "https://api.browshot.com/api/v1/simple?url=${url}&key=${browshot_key}" -o ${file}
}

get_screenshot http://taskwarrior.org/           taskwarrior-org.png
get_screenshot http://answers.tasktools.org/     answers-tasktools-org.png
get_screenshot http://status.tasktools.org/      status-tasktools-org.png
get_screenshot http://statuspage.tasktools.org/  statuspage-tasktools-org.png
get_screenshot https://bug.tasktools.org/        bug-tasktools-org.png
get_screenshot https://git.tasktools.org/        git-tasktools-org.png
get_screenshot http://tasktools.org/             tasktools-org.png
get_screenshot http://tasktools.org/tinderbox/   tasktools-org-tinderbox.png
get_screenshot http://holidata.net/              holidata-net.png
get_screenshot http://flod.us/                   flod-us.png
get_screenshot https://torp.tasktools.org/       torp-tasktools-org.png

get_screenshot http://d5e.org/                   d5e-org.png
get_screenshot http://dirk.deimeke.net/          dirk-deimeke-net.png
get_screenshot http://deimhart.net/              deimhart-net.png
