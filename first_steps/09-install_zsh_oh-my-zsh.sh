#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
LIGHT_RED='\033[1;31m'
LIGHT_GREEN='\033[1;32m'
YELLOW='\033[1;33m'
LIGHT_CYAN='\033[1;36m'
NO_COLOR='\033[0m'

instalar() {
    printf "${GREEN}Instalando o ${YELLOW}Zsh${GREEN} no seu ${LIGHT_CYAN}Pop!_OS${GREEN}.${NO_COLOR}\n"

    sudo apt install zsh -y

    printf "${GREEN}O ${YELLOW}$(zsh --version)${GREEN} foi instalado com sucesso!${NO_COLOR}\n"

    printf "${GREEN}Definindo o ${YELLOW}zsh${GREEN} como shell padrão${NO_COLOR}\n\n\n"
    chsh -s $(which zsh)
    
    printf "${YELLOW}Atenção!!${GREEN} É necessário revalidar seu terminal. Vamos iniciar uma sessão em um terminal em modo ${RED}root${GREEN}!${NO_COLOR}\n"
    printf "${GREEN}Nele basta você digitar '${RED}exit${GREEN}' e pressionar '${RED}enter${GREEN}' para retornar para a instalação.${NO_COLOR}\n\n"
    
while true; do
    printf "Tecle ${RED}enter${GREEN} para continuar!\n"
    read -p "-> " enter
    case $enter in
        * ) sudo su $USER; break;;
    esac
done
    
    printf "${GREEN}Tudo pronto! Após iniciar a instalação do ${YELLOW}Oh My Zsh${GREEN} irá trocar seu shell para o ${YELLOW}zsh${GREEN} e encerrar o script.${NO_COLOR}\n\n"

    printf "${GREEN}Instalando o ${YELLOW}Oh My Zsh${GREEN} no seu ${LIGHT_CYAN}Pop!_OS${GREEN}.${NO_COLOR}\n"

while true; do
    printf "Tecle ${RED}enter${GREEN} para continuar!\n"
    read -p "-> " enter
    case $enter in
        * ) sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"; break;;
    esac
done
}

printf "O ${YELLOW}Zsh${NO_COLOR} além de diversas vantagens de interatividade, tem a vantagem de possuir um framework incrível, que aumenta ainda mais a sua capacidade.\n"
printf "Trata-se do ${YELLOW}Oh My Zsh${NO_COLOR}, que permite instalar plugins, temas e adiciona muitas facilidades ao shell.\n\n"

while true; do
    printf "Deseja instalar o ${YELLOW}Zsh${NO_COLOR} e o ${YELLOW}Oh My Zsh${NO_COLOR}? ${GREEN}Y${NO_COLOR} / ${RED}N${NO_COLOR}\n"
    read -p "-> " yn
    case $yn in
        [Yy]* ) instalar ; printf "${LIGHT_GREEN}Instalado${NO_COLOR}\n\n"; break;;
        [Nn]* ) printf "${LIGHT_RED}Não será instalado.${NO_COLOR}\n\n"; exit;;
        * ) printf "Por favor, responda com ${LIGHT_GREEN}Y${NO_COLOR} para ${LIGHT_GREEN}SIM${NO_COLOR} ou ${LIGHT_RED}N${NO_COLOR} para ${LIGHT_RED}Nao${NO_COLOR}.\n\n";;
    esac
done

#end
