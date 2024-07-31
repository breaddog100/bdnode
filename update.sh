#!/bin/bash

# 设置版本号
current_version=20240731012

# 指定URL
update_url="https://raw.githubusercontent.com/breaddog100/bdnode/main/update.sh"
file_name=$(basename "$update_url")

# 定义函数
update_script() {
    # 下载脚本文件
    tmp=$(date +%s)
    curl -s -o $HOME/$tmp -H "Cache-Control: no-cache" "$update_url?$tmp"


    # 检查是否有新版本可用
    latest_version=$(grep -oP 'current_version=([0-9]+)' $HOME/$tmp | sed -n 's/.*=//p')

    if [[ "$latest_version" != "$current_version" ]]; then
        # 提示需要更新脚本
        printf "\033[31m脚本有新版本可用！当前版本：%s，最新版本：%s\033[0m\n" "$current_version" "$latest_version"
        mv $HOME/$tmp $HOME/$file_name
        chmod +x $HOME/$file_name
        exec $HOME/$file_name
    else
        # 脚本是最新的
        echo "脚本已是最新版本"
        rm -f $tmp
    fi

}

# 调用函数
update_script
