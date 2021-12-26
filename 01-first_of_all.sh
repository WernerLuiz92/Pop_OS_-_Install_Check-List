#!/bin/bash

LIGHT_GREEN='\033[1;32m'
YELLOW='\033[1;33m'
NO_COLOR='\033[0m'

sudo apt update

printf "01 -> ${YELLOW}Codecs Multimidia${NO_COLOR}:\n\n"
sh ./first_steps/01-install_codecs.sh

printf "\n"

printf "02 -> ${YELLOW}GNOME Tweak Tool (GNOME Tweaks)${NO_COLOR}:\n\n"
sh ./first_steps/02-install_gnome_tweaks.sh

printf "\n"

printf "03 -> ${YELLOW}Snapcraft Snapd${NO_COLOR}:\n\n"
sh ./first_steps/03-install_snapd.sh

printf "\n"

printf "04 -> ${YELLOW}Ativar o Firewall${NO_COLOR}:\n\n"
sh ./first_steps/04-enable_firewall.sh

printf "\n"

printf "05 -> ${YELLOW}Gerenciador de Pacotes - Synaptic${NO_COLOR}:\n\n"
sh ./first_steps/05-install_synaptic.sh

printf "\n"

printf "06 -> ${YELLOW}Instalar o JAVA (importante)${NO_COLOR}:\n\n"
sh ./first_steps/06-install_java.sh

printf "\n"

printf "07 -> ${YELLOW}Instalar o TLP (Para Notebooks)${NO_COLOR}:\n\n"
sh ./first_steps/07-install_tlp.sh

printf "\n"

printf "08 -> ${YELLOW}Neofetch (opcional)${NO_COLOR}:\n\n"
sh ./first_steps/08-install_neofetch.sh

printf "\n"

printf "${LIGHT_GREEN}Tudo pronto!${NO_COLOR}\n\n"

#end
