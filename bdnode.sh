#!/bin/bash

# 主菜单
function main_menu() {
    while true; do
        clear
        echo "=========两岸猿声啼不住，轻舟已过万重山。========="
    	echo "项目一键部署脚本，电报群：https://t.me/breaddog"
        echo "请选择项目:"
        echo "------------------撸空投项目------------------"
        echo "101. Babylon一键部署"
        echo "102. 0gAI一键部署"
        echo "------------------挖矿类项目------------------"
        echo "501. ORE挖矿脚本"
        echo "--------------------其他--------------------"
        echo "0. 退出脚本exit"
        read -p "请输入选项: " OPTION

        case $OPTION in
        101) wget -O Babylon.sh https://raw.githubusercontent.com/breaddog100/babylon/main/babylon-1.1.sh && chmod +x Babylon.sh && ./Babylon.sh ;;
        102) wget -O 0gai.sh https://raw.githubusercontent.com/breaddog100/0gai/main/0gai.sh && chmod +x 0gai.sh && ./0gai.sh ;;
        501) wget -O ore.sh https://raw.githubusercontent.com/breaddog100/ore/main/ore.sh && chmod +x ore.sh && ./ore.sh ;;
        
        0) echo "退出脚本。"; exit 0 ;;
	    *) echo "无效选项，请重新输入。"; sleep 3 ;;
	    esac
	    echo "按任意键返回主菜单..."
        read -n 1
    done
}

# 显示主菜单
main_menu