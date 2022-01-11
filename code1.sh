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





user_agents=("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/37.0.2062.94 Chrome/37.0.2062.94 Safari/537.36" "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36"  "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_4) AppleWebKit/536.30.1 (KHTML, like Gecko) Version/6.0.5 Safari/536.30.1" "Mozilla/5.0 (Linux; U; Android 4.0.3; en-ca; KFOT Build/IML74K) AppleWebKit/537.36 (KHTML, like Gecko) Silk/3.68 like Chrome/39.0.2171.93 Safari/537.36") # array of useragents

limit="${1:-10}"
mkdir -p redd_images
cd redd_images
curl -A "$user_agents$[$RANDOM % 4 + 0 ]" "https://www.reddit.com/r/astrophotography/top/.json?sort?=top=10&limit=$limit" | jq ".data.children[].data.url_overridden_by_dest" | xargs wget



