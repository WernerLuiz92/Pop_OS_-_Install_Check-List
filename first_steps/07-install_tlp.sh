#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
LIGHT_RED='\033[1;31m'
LIGHT_GREEN='\033[1;32m'
YELLOW='\033[1;33m'
LIGHT_CYAN='\033[1;36m'
NO_COLOR='\033[0m'

instalar() {
    printf "${GREEN}Instalando o ${YELLOW}TLP${GREEN} no seu ${LIGHT_CYAN}Pop!_OS${GREEN}.${NO_COLOR}\n\n"

    sudo apt install tlp tlp-rdw -y
    sudo systemctl enable tlp
}

printf "O ${YELLOW}TLP${NO_COLOR} é uma ferramenta avançada de gerenciamento de energia que aplica várias configurações e ajustes para ajudar o seu laptop a economizar bateria.\n\n"

while true; do
    printf "Deseja instalar o ${YELLOW}TLP${NO_COLOR}? ${GREEN}Y${NO_COLOR} / ${RED}N${NO_COLOR}\n"
    read -p "-> " yn
    case $yn in
        [Yy]* ) instalar ; printf "${LIGHT_GREEN}Instalado${NO_COLOR}\n\n"; break;;
        [Nn]* ) printf "${LIGHT_RED}Não será instalado.${NO_COLOR}\n\n"; exit;;
        * ) printf "Por favor, responda com ${LIGHT_GREEN}Y${NO_COLOR} para ${LIGHT_GREEN}SIM${NO_COLOR} ou ${LIGHT_RED}N${NO_COLOR} para ${LIGHT_RED}Nao${NO_COLOR}.\n\n";;
    esac
done

