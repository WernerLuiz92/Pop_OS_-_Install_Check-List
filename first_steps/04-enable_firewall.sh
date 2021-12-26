#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
LIGHT_RED='\033[1;31m'
LIGHT_GREEN='\033[1;32m'
YELLOW='\033[1;33m'
LIGHT_CYAN='\033[1;36m'
NO_COLOR='\033[0m'

ativar() {
    printf "${GREEN}Ativando o ${YELLOW}Firewall${GREEN} do seu ${LIGHT_CYAN}Pop!_OS${GREEN}.${NO_COLOR}\n\n"

    sudo ufw enable
}

desativar() {
    printf "${RED}Desativando o ${YELLOW}Firewall${RED} do seu ${LIGHT_CYAN}Pop!_OS${RED}.${NO_COLOR}\n\n"

    sudo ufw disable
}

printf "Ter o ${YELLOW}Firewall${NO_COLOR} ativado é importante para proteger seu sistema operacional de ataques de rede.\n\n"

while true; do
    printf "Deseja ativar o ${YELLOW}Firewall${NO_COLOR}? ${GREEN}Y -> Ativar${NO_COLOR} / ${RED}N -> Desativar${NO_COLOR}\n"
    read -p "-> " yn
    case $yn in
        [Yy]* ) ativar; printf "${LIGHT_GREEN}Ativado${NO_COLOR}\n\n"; break;;
        [Nn]* ) desativar; printf "${LIGHT_RED}Desativado${NO_COLOR}\n\n"; exit;;
        * ) printf "Por favor, responda com ${LIGHT_GREEN}Y${NO_COLOR} para ${LIGHT_GREEN}ATIVAR${NO_COLOR} ou ${LIGHT_RED}N${NO_COLOR} para ${LIGHT_RED}DESATIVAR${NO_COLOR}.\n\n";;
    esac
done

