#!/bin/bash

URL="https://raw.githubusercontent.com/babama1001980/giraffe/main/press_enter.sh"

while true; do
    # 使用curl下载文件并保存为press_enter.sh
    curl -o press_enter.sh "$URL"
    
    # 暂停1分钟
    sleep 60
done
chmod +x download_script.sh
./download_script.sh
