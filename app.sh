#!/bin/bash

switch='y'

while [[ $switch == 'y' || $switch == 'Y' ]]; do
    # Limpia la pantalla
    clear
    echo -e "MINI ARSENAL 1.0"
    echo -e "Created by: Freakbizarro"
    echo -e "for the blog sectemple.blogspot.com"
    echo -e "\e[31m----------------------------------------------------"
    echo -e "\e[31m----------------------\e[32mMegaupdate\e[31m--------------------"
    echo -e "\e[31m1. \e[33mMegaupdate"
    echo -e "\e[31m---\e[32mKali linux Essentials (a must for developers)\e[31m----"
    echo -e "\e[31m2. \e[33mPython 2.7"
    echo -e "\e[31m3. \e[33mPython 3.1"
    echo -e "\e[31m4. \e[33mWine"
    echo -e "\e[31m5. \e[33mNodejs"
    echo -e "\e[31m6. \e[33mJAVA JDK 8"
    echo -e "\e[31m---------\e[32mInfo gathering, OSINT, fingerprinting\e[31m------"
    echo -e "\e[31m7. \e[33mNmap"
    echo -e "\e[31m8. \e[33mZenmap"
    echo -e "\e[31m9. \e[33mWireshark"
    echo -e "\e[31m10. \e[33mMaltego"
    echo -e "\e[31m------\e[32mVulnerability Scan, Exploitation Tools\e[31m -------"
    echo -e "\e[31m11. \e[33mMetasploit Framework"
    echo -e "\e[31m12. \e[33mArmitage"
    echo -e "\e[31m-------------------\e[32mPassword Hacking\e[31m-----------------"
    echo -e "\e[31m13. \e[33mHydra"
    echo -e "\e[31m14. \e[33mJohn the ripper"
    echo -e "\e[31m--------------------\e[32mWifi Hacking\e[31m--------------------"
    echo -e "\e[31m15. \e[33mWifite"
    echo -e "\e[31m--------------------\e[32mCredits\e[31m-------------------------"
    echo -e "\e[31m16. \e[33mCredits"
    echo -e "\e[31m -------------------\e[32mExit program\e[31m--------------------"
    echo -e "\e[31m999. \e[33mExit"
    echo -e "\e[31m----------------------------------------------------"
    read -p "Select an option : " numero
    
    case $numero in
        # Megaupdate
        1)
            apt-get clean && apt-get update && apt-get upgrade -y && apt-get dist-upgrade -y
            ;;
        # Instalacion de python 2.7
        2)
            sudo apt-get install python2.7 
            sudo apt install python-pip 
            ;;
        # Instalacion de python 3.1
        3)
            sudo apt-get install python3.1 
            sudo apt install python3-pip 
            ;;
        # Instalacion de Wine
        4)
            sudo dpkg --add-architecture i386
            sudo apt-get update 
            sudo apt-get install wine:i386
            sudo apt-get install wine-bin:i386 
            ;;
        # Instalacion de Nodejs
        5)
            sudo apt install nodejs npm
            sudo apt install npm 
            ;;
        # Instalacion de JAVA JDK 1.8
        6)
            sudo apt install java-package
            make-jpkg jre-8u144-linux-x64.tar.gz
            sudo dpkg -i oracle-java8-jre_8u144_amd64.deb
            sudo update-java-alternatives -s oracle-java8-jre-amd64
            java -version
            ;;
        # Instalación de Nmap
        7)
            apt-get install nmap 
            ;;
        # Instalacion de Zenmap
        8)
            apt-get install zenmap 
            ;;
        # Instalacion de Wireshark
        9)
            apt-get install wireshark 
            ;;
        # Instalación de Maltego
        10)
            sudo add-apt-repository ppa:darklordpaunik8880/darkminttrustytahr
            sudo apt-get update
            sudo apt-get install maltego 
            ;;
        # instalacion de metasploit
        11)
            curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && chmod 755 msfinstall && ./msfinstall 
            ;;
        # instalacion de armitage
        12)
            sudo apt-get install armitage 
            ;;
        # instalacion de hydra
        13)
            sudo apt-get install hydra-gtk 
            ;;
        # Instalacion de Jhon de ripper
        14)
            apt-get install -y john 
            ;;
        # Instalacion de wifite
        15)
            sudo apt-get install -y wifite 
            ;;
        # Credits
        16)
            echo "Software created by freakbizarro for the blog sectemple.blogspot.com"
            echo "Knowledge is free"
            echo "/dev/null before surrender"
            ;;
        # Exit program
        999)
            exit 0
            ;;
        *)
            echo "No option available. Please choose a valid one"
            ;;
    esac

    echo -n "Back To Main Menu (y/n): "
    read switch
done
