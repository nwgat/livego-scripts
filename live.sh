#!/bin/bash
ffmpeg -loglevel error -re -f video4linux2 -input_format h264 -video_size 1280x720 -framerate 30 -i /dev/video0 -vcodec copy -an -strict -2 -f flv rtmp://192.168.1.2:1935/live/keyfromlivego
