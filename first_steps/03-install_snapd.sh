#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
LIGHT_RED='\033[1;31m'
LIGHT_GREEN='\033[1;32m'
YELLOW='\033[1;33m'
LIGHT_CYAN='\033[1;36m'
NO_COLOR='\033[0m'

instalar() {
    printf "${GREEN}Instalando a ${YELLOW}Snapd${GREEN} no seu ${LIGHT_CYAN}Pop!_OS${GREEN}.${NO_COLOR}\n\n"

    sudo apt install snapd -y
}

printf "A ${YELLOW}Snapcraft Snapd${NO_COLOR} é um repositório de aplicativos mantido pela Canonical (Mantenedora do Ubuntu).\n"
printf "Com ela é possível instalar diversas aplicações que funcionam sem alteração em diversas distribuições Linux.\n\n"

while true; do
    printf "Deseja instalar a ${YELLOW}Snapcraft Snapd${NO_COLOR}? ${GREEN}Y${NO_COLOR} / ${RED}N${NO_COLOR}\n"
    read -p "-> " yn
    case $yn in
        [Yy]* ) instalar ; printf "${LIGHT_GREEN}Instalado${NO_COLOR}\n\n"; break;;
        [Nn]* ) printf "${LIGHT_RED}Não será instalado.${NO_COLOR}\n\n"; exit;;
        * ) printf "Por favor, responda com ${LIGHT_GREEN}Y${NO_COLOR} para ${LIGHT_GREEN}SIM${NO_COLOR} ou ${LIGHT_RED}N${NO_COLOR} para ${LIGHT_RED}Nao${NO_COLOR}.\n\n";;
    esac
done

#end