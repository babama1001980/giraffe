#!/bin/bash

while true; do
    # 模拟按下数字1
    xdotool type "1"
    
    # 暂停2秒
    sleep 2
    
    # 模拟按下回车键
    xdotool key Return
    
    # 暂停1分钟
    sleep 60
done
chmod +x automate.sh
./automate.sh
