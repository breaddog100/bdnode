#!/bin/bash

# 设置版本号
current_version=20240731004

# 指定URL
update_url="https://raw.githubusercontent.com/breaddog100/bdnode/main/update.sh"

# 定义函数
update_script() {
    # 下载脚本文件
    curl -sO -H "Cache-Control: no-cache" "$update_url"

    # 检查是否有新版本可用
    latest_version=$(grep -oP 'current_version=([0-9]+)' update.sh | sed -n 's/.*=//p')

    if [[ "$latest_version" != "$current_version" ]]; then
        # 提示需要更新脚本
        printf "\033[31m脚本有新版本可用！当前版本：%s，最新版本：%s\033[0m\n" "$current_version" "$latest_version"
    else
        # 脚本是最新的
        echo "脚本已是最新版本"
    fi

    # 删除下载的更新脚本文件
    rm update.sh
}

# 调用函数
update_script
