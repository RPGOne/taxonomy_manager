#!/bin/sh

# This script shows the download stats on GitHub. Update the id using the
# output of:
#
# curl -s https://api.github.com/repos/git-for-windows/git/releases |
# tac |
# sed -n '/^    "tag_name":/{
#  N;
#  s/.*"tag_name": "\([^"]*\)"[^"]*"id": \([0-9]*\).*/# \1\nid=${1:-\2}/p
# }'

# 2.3.4.windows.2
#id=${1:-1093748}
# 2.3.5.windows.4
#id=${1:-1130398}
# 2.3.5.windows.6
#id=${1:-1133929}
# 2.3.5.windows.7
#id=${1:-1147969}
# 2.3.5.windows.8
#id=${1:-1148462}
# 2.3.6.windows.2
#id=${1:-1215956}
# 2.3.7.windows.1
#id=${1:-1235013}
# 2.4.0.windows.1
#id=${1:-1257687}
# 2.4.0.windows.2
#id=${1:-1272221}
# 2.4.1.windows.1
#id=${1:-1296332}
# 2.4.2.windows.1
#id=${1:-1345088}
# 2.4.3.windows.1
#id=${1:-1409345}
# v2.4.4.windows.2
#id=${1:-1441039}
# v2.4.5.windows.1
#id=${1:-1471836}
# v2.4.6.windows.1
#id=${1:-1554860}
# 2.5.0.windows.1
id=${1:-1683962}

curl -s https://api.github.com/repos/git-for-windows/git/releases/$id/assets |
grep -e '"name":' -e '"download_count":'
