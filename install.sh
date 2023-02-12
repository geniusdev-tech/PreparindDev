#Entrar como ADM
sudo su
#Atualizar repositorios, sistemas e seus pacotes
apt-get install update && apt-get install dist-upgrade -y
#Ferramentas basicas para estudos desenvolver
apt install git nodejs wget curl ruby -y
#Faz o download do google chrome em - > .deb 
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
#O gerenciador dpkg -i ou --install é chamado para instalar o .deb 
dpkg -i google-chrome-stable_current_amd64.deb -y

#Instalação do VSCode por CLI

wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg

apt install apt-transport-https
apt update
apt install code -y

#Caso venha usar serviços da Google Firebase CLI
npm i -g firebase-tools -y


