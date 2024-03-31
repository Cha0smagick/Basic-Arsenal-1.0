#!/bin/bash

print_menu() {
    cat << EOF
MINI ARSENAL 2.0
Created by: Freakbizarro
for the blog sectemple.blogspot.com
----------------------------------------------------
----------------------Megaupdate--------------------
1. Megaupdate
---Kali linux Essentials (a must for developers)----
2. Python 2.7
3. Python 3.1
4. Wine
5. Nodejs
6. JAVA JDK 8
---------Info gathering, OSINT, fingerprinting------
7. Nmap
8. Zenmap
9. Wireshark
10. Maltego
------Vulnerability Scan, Exploitation Tools-------
11. Metasploit Framework
12. Armitage
-------------------Password Hacking-----------------
13. Hydra
14. John the ripper
--------------------Wifi Hacking--------------------
15. Wifite
--------------------Credits-------------------------
16. Credits
-------------------Exit program---------------------
999. Exit
----------------------------------------------------
EOF
}

install_python27() {
    sudo apt-get install python2.7 python-pip
}

# Add more install functions for other options...

switch='y'
while [[ $switch == 'y' || $switch == 'Y' ]]; do
    clear
    print_menu
    read -p "Select an option: " numero

    case $numero in
        1)
            apt-get clean && apt-get update && apt-get upgrade -y && apt-get dist-upgrade -y
            ;;
        2)
            install_python27
            ;;
        # Add cases for other options...

        999)
            echo "Exiting program..."
            exit 0
            ;;
        *)
            echo "No valid option selected. Please choose a valid one."
            ;;
    esac

    read -p "Back To Main Menu (y/n): " switch
done
