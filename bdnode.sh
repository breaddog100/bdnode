#!/bin/bash

# 主菜单
function main_menu() {
    while true; do
        clear
        echo "=========两岸猿声啼不住，轻舟已过万重山。========="
    	echo "沟通电报群：https://t.me/lumaogogogo"
        echo "请选择项目:"
        echo "--------------------节点类项目--------------------"
        echo "102. 0gAI 一键部署"
        echo "103. Nimble(GPU) 一键部署"
        echo "104. Aligned Layer一键部署"
        echo "105. Fuel 一键部署"
        echo "106. Lava 一键部署"
        echo "108. Privasea 一键部署"
        echo "109. Taiko Hekla 一键部署"
        echo "111. Artela 一键部署"
        echo "112. Tanssi Network 一键部署"
        echo "113. Quilibrium Network 一键部署"
        echo "114. Initia 一键部署"
        echo "115. HyperLane 一键部署"
        echo "116. Analog 一键部署"
        echo "117. Nubit 一键部署"
        echo "118. Voi 一键部署"
        echo "119. Aleo 一键部署"
        echo "120. Zora 一键部署"
        echo "121. Airchains 一键部署"
        echo "--------------------挖矿类项目--------------------"
        echo "503. Spectre(CPU) 一键挖矿"
        echo "110. Titan Network 一键挖矿"
        echo "---------------------已停项目---------------------"
        echo "107. Taiko 一键部署[已停用]"
        echo "501. ORE(CPU) -v1 挖矿脚本[已停用]"
        echo "502. ORE(GPU) -v1 挖矿脚本[已停用]"
        echo "101. Babylon 一键部署"
        echo "-----------------------其他----------------------"
        echo "0. 退出脚本exit"
        read -p "请输入选项: " OPTION

        case $OPTION in
        
        102) wget -O 0gai.sh https://raw.githubusercontent.com/breaddog100/0gai/main/0gai.sh && chmod +x 0gai.sh && ./0gai.sh ;;
        103) wget -O Nimble.sh https://raw.githubusercontent.com/breaddog100/nimble/main/nimble.sh && chmod +x Nimble.sh && ./Nimble.sh ;;
        104) wget -O Alignedlayer.sh https://raw.githubusercontent.com/breaddog100/AlignedLayer/main/Alignedlayer.sh && chmod +x Alignedlayer.sh && ./Alignedlayer.sh ;;
        105) wget -O fuel.sh https://raw.githubusercontent.com/breaddog100/fuel/main/fuel.sh&& chmod +x fuel.sh && ./fuel.sh ;;
        106) wget -O Lava.sh https://raw.githubusercontent.com/breaddog100/lava/main/lava.sh && chmod +x Lava.sh && ./Lava.sh ;;
        108) wget -O Privasea.sh https://raw.githubusercontent.com/breaddog100/privasea/main/Privasea.sh && chmod +x Privasea.sh && ./Privasea.sh ;;
        109) wget -O taiko-hekla.sh https://raw.githubusercontent.com/breaddog100/taiko/main/taiko-hekla.sh && chmod +x taiko-hekla.sh && ./taiko-hekla.sh ;;
        111) wget -O Artela.sh https://raw.githubusercontent.com/breaddog100/artela/main/Artela.sh && chmod +x Artela.sh && ./Artela.sh ;;
        112) wget -O tanssinetwork.sh https://raw.githubusercontent.com/breaddog100/tanssi/main/tanssinetwork.sh && chmod +x tanssinetwork.sh && ./tanssinetwork.sh ;;
        113) wget -O quil.sh https://raw.githubusercontent.com/breaddog100/QuilibriumNetwork/main/quil.sh && chmod +x quil.sh && ./quil.sh ;;
        114) wget -O initia.sh https://raw.githubusercontent.com/breaddog100/Initia/main/initia.sh && chmod +x initia.sh && ./initia.sh ;;
        115) wget -O hyperlane.sh https://raw.githubusercontent.com/breaddog100/HyperLane/main/hyperlane.sh && chmod +x hyperlane.sh && ./hyperlane.sh ;;
        116) wget -O analog.sh https://raw.githubusercontent.com/breaddog100/Analog/main/analog.sh && chmod +x analog.sh && ./analog.sh ;;
        117) wget -O nubit.sh https://raw.githubusercontent.com/breaddog100/Nubit/main/nubit.sh && chmod +x nubit.sh && ./nubit.sh ;;
        118) wget -O voi.sh https://raw.githubusercontent.com/breaddog100/voi/main/voi.sh && chmod +x voi.sh && ./voi.sh ;;
        119) wget -O aleo.sh https://raw.githubusercontent.com/breaddog100/Aleo/main/aleo.sh && chmod +x aleo.sh && ./aleo.sh ;;
        120) wget -O zora.sh https://raw.githubusercontent.com/breaddog100/Zora/main/zora.sh && chmod +x zora.sh && ./zora.sh ;;
        121) wget -O airchains.sh https://raw.githubusercontent.com/breaddog100/airchains/main/airchains.sh && chmod +x airchains.sh && ./airchains.sh ;;
        
        503) wget -O spectre.sh https://raw.githubusercontent.com/breaddog100/spectre-network/main/spectre.sh && chmod +x spectre.sh && ./spectre.sh ;;
        110) wget -O titan-network.sh https://raw.githubusercontent.com/breaddog100/titan-network/main/titan-network-v2.sh && chmod +x titan-network.sh && ./titan-network.sh ;;
        
        0) echo "退出脚本。"; exit 0 ;;
	    *) echo "无效选项，请重新输入。"; sleep 3 ;;
	    esac
	    echo "按任意键返回主菜单..."
        read -n 1
    done
}

# 显示主菜单
main_menu