#!/bin/bash

# browshot_key="5fb735396248abe12e45ffc220888f42"

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

get_screenshot http://taskwarrior.org/tools/                    3rdparty.png
get_screenshot http://answers.tasktools.org/                    answers-tasktools-org.png
get_screenshot https://botbot.me/freenode/taskwarrior/          botbot-me-taskwarrior.png
get_screenshot https://bug.tasktools.org/                       bug-tasktools-org.png
get_screenshot https://central.tasktools.org/taskd-1.2.0.html   central-tasktools-org.png
get_screenshot https://git.tasktools.org/                       git-tasktools-org.png
get_screenshot https://tasktools.org/                           tasktools-org.png
get_screenshot https://taskwarrior.org/                         taskwarrior-org.png
get_screenshot https://taskwarrior.org/docs/                    taskwarrior-org-docs.png
