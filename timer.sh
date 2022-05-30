#!/bin/bash
echo How long of a timer? 
read time
termdown $time && mpv ~/audio/alarm.opus --loop --no-video
