#!/bin/bash

# rtmp key
key="key"
# rtmp ip
ip="livego"
# resolution
res="1280x720"
# framerate
fps="30"
# birrate
bt="1000000"

v4l2-ctl --set-ctrl video_bitrate=$bt
ffmpeg -loglevel error -re -f video4linux2 -input_format h264 -video_size $res -framerate $fps -i /dev/video0 -vcodec copy -an -strict -2 -f flv rtmp://$ip:1935/live/$key
