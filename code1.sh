#!/bin/bash
#SPDX-License-Identifier: GPL-2.0-or-later
# +++++++++++++++++++++++++++++++++
# ++++++Project_1101++++++++++++++++
#   Author: IC1101
#   Date Created: 11/01/2022
#   Last Modified:11/01/2022
# +++++++++++++++++++++++++++++++++
# Usage: $0.sh $1
# A script that downloads images from subreddit

limit="${1:-10}"
mkdir -p redd_images
cd redd_images
curl -A "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko)" "https://www.reddit.com/r/astrophotography/top/.json?sort?=top=10&limit=$limit" | jq ".data.children[].data.url_overridden_by_dest" | xargs wget



