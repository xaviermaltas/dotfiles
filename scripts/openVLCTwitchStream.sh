#!/usr/bin/env bash
#
# openVLCTwitchStream.sh - Open a Twitch stream in VLC via streamlink.
#
# Usage: ./openVLCTwitchStream.sh <streamerUser>
# Example: ./openVLCTwitchStream.sh skain

set -euo pipefail

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <streamerUser>" >&2
    exit 1
fi

STREAMER="$1"

streamlink "https://twitch.tv/$STREAMER" best
