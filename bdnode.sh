#!/bin/bash

# 主菜单
function main_menu() {
    while true; do
        clear
        echo "=========两岸猿声啼不住，轻舟已过万重山。========="
    	echo "沟通电报群：https://t.me/lumaogogogo"
        echo "请选择项目:"
        echo "--------------------节点类项目--------------------"
        echo "101. Babylon 一键部署"
        echo "102. 0gAI 一键部署"
        echo "103. Nimble(GPU) 一键部署"
        echo "104. Aligned Layer一键部署"
        echo "105. Fuel 一键部署"
        echo "106. Lava 一键部署"
        echo "107. Taiko 一键部署(5月10日停止)"
        echo "108. Privasea 一键部署"
        echo "109. Taiko Hekla 一键部署"
        echo "110. Titan Network 一键部署"
        echo "--------------------挖矿类项目--------------------"
        echo "501. ORE(CPU) -v1 挖矿脚本[已停用]"
        echo "502. ORE(GPU) -v1 挖矿脚本[已停用]"
        echo "-----------------------其他----------------------"
        echo "0. 退出脚本exit"
        read -p "请输入选项: " OPTION

        case $OPTION in
        101) wget -O Babylon.sh https://raw.githubusercontent.com/breaddog100/babylon/main/babylon-1.1.sh && chmod +x Babylon.sh && ./Babylon.sh ;;
        102) wget -O 0gai.sh https://raw.githubusercontent.com/breaddog100/0gai/main/0gai.sh && chmod +x 0gai.sh && ./0gai.sh ;;
        103) wget -O Nimble.sh https://raw.githubusercontent.com/breaddog100/nimble/main/nimble.sh && chmod +x Nimble.sh && ./Nimble.sh ;;
        104) wget -O Alignedlayer.sh https://raw.githubusercontent.com/breaddog100/AlignedLayer/main/Alignedlayer.sh && chmod +x Alignedlayer.sh && ./Alignedlayer.sh ;;
        105) wget -O Fuel.sh https://raw.githubusercontent.com/breaddog100/fuel/main/fuel-v1.0.sh&& chmod +x Fuel.sh && ./Fuel.sh ;;
        106) wget -O Lava.sh https://raw.githubusercontent.com/breaddog100/lava/main/lava-v1.0.sh && chmod +x Lava.sh && ./Lava.sh ;;
        107) wget -O taiko.sh https://raw.githubusercontent.com/breaddog100/taiko/main/taiko-v1.0.sh && chmod +x taiko.sh && ./taiko.sh ;;
        108) wget -O Privasea.sh https://raw.githubusercontent.com/breaddog100/privasea/main/Privasea.sh && chmod +x Privasea.sh && ./Privasea.sh ;;
        109) wget -O taiko-hekla.sh https://raw.githubusercontent.com/breaddog100/taiko/main/taiko-hekla.sh && chmod +x taiko-hekla.sh && ./taiko-hekla.sh ;;
        110) wget -O titan-network.sh https://raw.githubusercontent.com/breaddog100/titan-network/main/titan-network.sh && chmod +x titan-network.sh && ./titan-network.sh ;;
        
        501) wget -O ore.sh https://raw.githubusercontent.com/breaddog100/ore/main/ore.sh && chmod +x ore.sh && ./ore.sh ;;
        501) wget -O ore-gpu.sh https://raw.githubusercontent.com/breaddog100/ore/main/ore-gpu.sh && chmod +x ore-gpu.sh && ./ore-gpu.sh ;;
        
        0) echo "退出脚本。"; exit 0 ;;
	    *) echo "无效选项，请重新输入。"; sleep 3 ;;
	    esac
	    echo "按任意键返回主菜单..."
        read -n 1
    done
}

# 显示主菜单
main_menu