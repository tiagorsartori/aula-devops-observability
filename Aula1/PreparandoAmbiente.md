# Preparando o Ambiente

## Pré-requisitos

* WSL versão 2 ou VM com Linux
* Sugestão de distribuição - Debian

**definindo versão 2 como padrão do WSL**  

> ```powershell
> wsl --set-default-version 2
> ```

**listando distribuições disponíveis no WSL**  

> ```powershell
> wsl --list --online
> ```

**Instalando uma distribuição no WSL**  

> ```powershell
> wsl --install Debian
> ```

**listando distribuições WLS instaladas**  

> ```powershell
> wsl --list -v
> ```

## Atualizando a lista de pacotes

> ```bash
> apt update
> ```

## Atualiza os pacotes

> ```bash
> apt upgrade
> ```  

## Instalando o docker e aplicativos uteis

> ```bash
> apt install docker.io docker-compose vim ccze htop dnsutils net-tool
> ```  

## Verificando as versões instaladas

> ```bash
> docker --version
> docker-compose --version
> ```  

## Iniciando o serviço do docker

> ```bash
> service docker start
> ```  
