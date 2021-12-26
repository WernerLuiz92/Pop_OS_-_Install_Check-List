#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
LIGHT_RED='\033[1;31m'
LIGHT_GREEN='\033[1;32m'
BROWN='\033[0;33m'
YELLOW='\033[1;33m'
LIGHT_CYAN='\033[1;36m'
NO_COLOR='\033[0m'

instalar() {
    printf "${GREEN}Instalando os pacotes de ${YELLOW}Codecs Multimidia${GREEN} no seu ${LIGHT_CYAN}Pop!_OS${GREEN}.${NO_COLOR}\n\n"

    sudo apt install ubuntu-restricted-extras -y
}

printf "Estes pacotes de Codecs irão permitir que o sistema execute diversos tipos de arquivos como ${BROWN}.mp3${NO_COLOR}, ${BROWN}.mp4${NO_COLOR}, ${BROWN}.mkv${NO_COLOR} e etc...\n\n"

while true; do
    printf "Deseja instalar os pacotes de ${YELLOW}Codecs Multimidia${NO_COLOR}? ${GREEN}Y${NO_COLOR} / ${RED}N${NO_COLOR}\n"
    read -p "-> " yn
    case $yn in
        [Yy]* ) instalar ; printf "${LIGHT_GREEN}Instalado${NO_COLOR}\n\n"; break;;
        [Nn]* ) printf "${LIGHT_RED}Não será instalado.${NO_COLOR}\n\n"; exit;;
        * ) printf "Por favor, responda com ${LIGHT_GREEN}Y${NO_COLOR} para ${LIGHT_GREEN}SIM${NO_COLOR} ou ${LIGHT_RED}N${NO_COLOR} para ${LIGHT_RED}Nao${NO_COLOR}.\n\n";;
    esac
done

#end