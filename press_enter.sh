#!/bin/bash

while true; do
    # 模拟按下 Enter 键
    xdotool key Return
    
    # 暂停1分钟
    sleep 60
done

chmod +x press_enter.sh
./press_enter.sh