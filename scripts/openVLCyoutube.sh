#!/usr/bin/env bash
#
# openVLCyoutube.sh - Open a YouTube video in VLC via yt-dlp at up to 1080p.
#
# Usage: ./openVLCyoutube.sh <youtubeLink>
# Example: ./openVLCyoutube.sh https://www.youtube.com/watch?v=vv625Qwv0_s
#
# NOTE: YouTube serves 1080p+ as SEPARATE video-only and audio-only streams,
# so we request bestvideo+bestaudio (two URLs) and let VLC combine them via
# --input-slave. Plain "best" only picks muxed streams, which cap at 720p.

set -euo pipefail

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <youtubeLink>" >&2
    exit 1
fi

YOUTUBE_URL="$1"

# yt-dlp -g prints one direct URL per selected stream, one per line.
URLS="$(yt-dlp -g -f "bestvideo[height<=1080]+bestaudio/best[height<=1080]" "$YOUTUBE_URL")"

VIDEO_URL="$(printf '%s\n' "$URLS" | sed -n '1p')"
AUDIO_URL="$(printf '%s\n' "$URLS" | sed -n '2p')"

if [ -n "$AUDIO_URL" ]; then
    # Separate video + audio streams (1080p path).
    vlc "$VIDEO_URL" --input-slave="$AUDIO_URL"
else
    # Single muxed stream fallback.
    vlc "$VIDEO_URL"
fi
