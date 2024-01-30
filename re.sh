#!/bin/bash
#Coded By Rezhwan Ameer
green='\033[0;32m'
white='\033[1;37m'
red='\033[0;31m'
orange='\033[0;33m'
echo -e  " ${green} Welcome To Re Cloner (Powered By Wget Tool)"
reClone(){
echo -e ${orange}
read -p 'Target URL:' rtg
wget --mirror --convert-links --adjust-extension --page-requisites --no-parent $rtg
}
reExit(){
echo "Script have been terminate........"
exit
}
cat  << "EOF"

######             #####                                     
#     # ######    #     # #       ####  #    # ###### #####  
#     # #         #       #      #    # ##   # #      #    # 
######  #####     #       #      #    # # #  # #####  #    # 
#   #   #         #       #      #    # #  # # #      #####  
#    #  #         #     # #      #    # #   ## #      #   #  
#     # ######     #####  ######  ####  #    # ###### #    # 

EOF
echo -e ${red}
echo "1-Clone Website"
echo "2-Exit"
echo -e ${white}
read -p '[$RE_CLONER$]:' rcm
if [ $rcm = "1" ];
then
reClone
elif [ $rcm = "2" ];
then
reExit
else
echo 'No option'
fi
echo -e ${white}
