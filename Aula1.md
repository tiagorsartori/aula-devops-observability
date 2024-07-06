# Monitoramento e observabilidade - Segurança

## :memo: Agenda

* Como serão as aulas;  
* Apresentação;  
* Conceitos;  
* Preparação do ambiente;  
* Instalação dos contêineres;  
* Configuração das aplicações;  
* Simulando ataques no ambiente;  
* Verificando informações coletadas;  
* Trabalhando com logs;  
* Criando dashboards com os indicadores;  
* Configurando notificações;  
* Automatizando a criação do ambiente;  

## Apresentação

![Tiago Ramos Sartori](perfil.jpg)  
Tiago Ramos Sartori

### Formação

* Tecnologia e Análise em Desenvolvimento de Sistemas | Integrado;  
* Administração de Banco de Dados Oracle | Integrado;  
* Redes de Computadores e Segurança | Integrado;  
* MBA em Gerenciamento de Projetos | Integrado;  
* MBA em Liderança e Estratégia Educacional | Integrado;  

### Atuação

* Infraestrutura de TI;  
* Banco de Dados;  
* Segurança e Monitoramento de Informação;  
* Administração e Gerenciamento de Servidores Windows e Linux;  
* Telefonia IP;  
* Virtualização;  
* **Atualmente como Gestor de Infraestrutura de TI no Grupo Integrado.**  

## Como serão as aulas

* Conceitos;
* Visão geral das ferramentas;
* Preparação e configuração do ambiente;
* Instalação e configuração das ferramentas;
* Testes e criação de dashboards;

## Conceitos

* O que é observabilidade?
  * É a capacidade de analisar, explorar, coletar métricas de um sistema ou ambiente em produção, identificando e entendendo seus padrões de comportamento para extrair dados sobre seu funcionamento, emitindo alertas para solucionar e resolver incidentes de performance, disponibilidade e segurança.
  
  * Inicialmente aplicado ao maquinário da indústria, o conceito de observabilidade vem cada vez sendo mais aplicado na tecnologia, devido aos sistemas e ambientes, que muitas vezes compartilham recursos em servidores e cloud, geralmente de alta complexidade, o que torna necessária a integração também da segurança de todos esses recursos e aplicações.
    * Adaptado de: [https://www.softwall.com.br/blog/observabilidade-ti-o-que-e-pilares/](https://www.softwall.com.br/blog/observabilidade-ti-o-que-e-pilares/)  

* Observabilidade de segurança para aplicações web
  * Observar aplicações web tem a finalidade de tentar identificar comportamentos suspeitos, falhas ou anomalias no ambiente.
  * Os dados coletados nessas análises gera conteúdo para que equipes de desenvolvimento e segurança possam implementar melhorias em códigos, políticas e processos, mitigando futuros impactos.

* Os 3 pilares da observabilidade:
  * Logs
    * É o registro de alguma ação, contendo data, hora, local e o ocorrido.
  * Métricas
    * São indicadores passíveis de mensuração e identificação dentro do ambiente.
  * Rastreio
    * É o fluxo percorrido do acesso até a execução de uma ação do ambiente.

|     | Monitoramento | Observabilidade |
|-----|---------------|-----------------|
| O que é? | Medir e gerar relatórios sobre métricas específicas em um sistema, para garantir a integridade do sistema. | Coletando métricas, eventos, logs e rastreamentos para permitir uma investigação profunda sobre problemas de saúde em sistemas distribuídos com arquiteturas de microsserviços. |
| Foco principal                  | Coletar dados para identificar efeitos anômalos no sistema. | Investigar a causa raiz dos efeitos anômalos do sistema. |
| Sistemas envolvidos | Normalmente se preocupa com sistemas autônomos. | Normalmente se preocupa com sistemas múltiplos e díspares. |
| Rastreabilidade | Limitado às bordas do sistema. | Disponível onde os sinais são emitidos em diferentes arquiteturas de sistema. |
| Descobertas de erros do sistema | O quando e o quê. | O porquê e o como. |

* Fonte: [https://aws.amazon.com/pt/compare/the-difference-between-monitoring-and-observability/
    ](https://aws.amazon.com/pt/compare/the-difference-between-monitoring-and-observability/)

## Visão geral das ferramentas

* **O que é o Zabbix?**
  * O Zabbix foi criado por Alexei Vladishev, e atualmente é ativamente desenvolvido e mantido por Zabbix SIA.
  * O Zabbix é uma solução de nível enterprise, de código aberto e com suporte a monitoração distribuída.
  * O Zabbix é um software que monitora numerosos parâmetros de rede, a saúde e integridade de servidores, máquinas virtuais, aplicações, serviços, banco de dados, websites, a nuvem e muito mais. O Zabbix usa um mecanismo flexível de notificação que permite aos usuários configurar alertas baseados em e-mail para praticamente qualquer evento. Isso permite uma resposta rápida para problemas do servidor. O Zabbix oferece um excelente recurso de relatórios e visualização de dados baseados em dados armazenados. Isso torna o Zabbix ideal para gerenciamento de capacidade.
  * O Zabbix suporta tanto "pooling" quanto "trapping". Todos os relatórios e estatísticas, bem como os parâmetros de configuração são acessados através de um frontend baseado web. Um frontend baseado na web garante que o status de sua rede e a integridade de seus servidores podem ser avaliadas a partir de qualquer localização. Devidamente configurado, o Zabbix pode desempenhar um papel importante no monitoramento da infraestrutura de TI. Isto é igualmente verdadeiro para pequenas organizações com poucos servidores e para grandes empresas com milhares de servidores.
  * O Zabbix é gratuito. Zabbix é escrito e distribuído sob a GPL General Public License versão 2. Isso significa que seu código fonte é distribuído gratuitamente e disponível para o público em geral.
  * [https://www.zabbix.com/](https://www.zabbix.com/)
  * [https://www.zabbix.com/documentation/current/pt/manual](https://www.zabbix.com/documentation/current/pt/manual)

* **O que é o Wazuh?**
  * Wazuh entrega uma solução robusta de proteção e monitoramento de segurança para os ativos de TI utilizando SIEM (Security Information and Event Management) e XDR (Extended Detection and Response).
  * Casos de uso:
    * Configuration Assessment
    * Threat Hunting
    * Incident Response
    * Containers Security
    * Malware Detection
    * Log Data Analysis
    * Regulatory Compliance
    * Posture Management
    * File Integrity Monitoring
    * Vulnerability Detection
    * IT Hygiene
    * Workload Protection
  * [https://wazuh.com/](https://wazuh.com/)
  * [https://wazuh.com/platform/overview/](https://wazuh.com/platform/overview/)
  * [https://documentation.wazuh.com/current/index.html](https://wazuh.com/platform/overview/)

* **O que é o Suricata?**
  * Suricata é um IDS, IPS e um moto de monitoramento e segurança de rede de alta performance. É mantido e desenvolvido por uma comunidade sem fins lucrativos a Open Information Security Foundation (OISF).
  * [https://suricata.io/](https://suricata.io/)
  * [https://suricata.io/documentation/](https://suricata.io/documentation/)
  * [https://docs.suricata.io/en/latest/what-is-suricata.html](https://docs.suricata.io/en/latest/what-is-suricata.html)

* **O que é o Grafana?**
  * Grafana é uma poderosa interface com visões flexíveis de praticamente qualquer tipo de informação que possa ser coletada, logs, métricas, indicadores, rastreios, etc.
  * [https://grafana.com/](https://grafana.com/)
  * [https://grafana.com/grafana/](https://grafana.com/grafana/)
  * [https://grafana.com/docs/](https://grafana.com/docs/)

## Preparação do ambiente

* Instalação VirtualBox
  * Criação de uma Máquina virtual - Debian - SSH
  * 2 ou 4 vCPU;
  * 4gb de memória RAM;
  * 50gb de HD;
  * Instalação e configuração do ambiente conteinerizado para simulação das ferramentas;
* Criação de uma Máquina virtual - Kali
  * 2 ou 4 vCPU;
  * 4gb de memória RAM;
  * 50gb de HD;
  * Instalação com as ferramentas padrão de análise de vulnerabilidades;

### Log para o professor

> script nome_data.txt  
> script tiago_05-07-2024.txt  

* Instalação dos programas básicos para o ambiente;
  * Atualizando a lista de pacotes disponíveis no repositório do sistema;

  ```bash
  apt update
  ```
  
  * Atualizando os pacotes instalados no sistema;

  ```bash
  apt upgrade
  ```

  * Instalando o docker e aplicativos úteis;  

  ```bash
  apt install docker.io docker-compose vim ccze htop dnsutils net-tools wget python3 python3-pip unzip
  ```

  * Verificando as versões instaladas

  ```bash
  docker --version
  docker-compose –version
  ```

  * Verificando status do serviço

  ```bash
  Service docker status
  ```

  * Alias para exibição dos contêineres - executar no bash ou add no .bashrc

  ```bash
  alias dsa='docker ps --format "table {{.ID}}\t{{.Names}}\t{{.Status}}\t{{.Ports}}"'
  ```

## Instalação dos contêineres

### Comandos úteis  

#### Lista todos os contêineres  

```bash
docker ps -a
```

#### Inicia todos os contêineres iniciados  

```bash
docker ps
```

#### Calcula o tamanho utilisado pelos contêineres  

```bash
docker ps -s
```

#### Inicia todos os contêineres  

```bash
docker start $(docker ps -a -q)
```

#### Para todos os contêineres  

```bash
docker stop $(docker ps -a -q)
```

### Executa um contêiner com MySQL Server versão 8.0

```bash
docker run --name mysql-server -e MYSQL_ROOT_PASSWORD=123Mudar@ -p 3306:3306 -d mysql:8.0
```

```yml
# Mysql
version: '3.7'

services:
  mysql-server:
    image: mysql:8.0
    hostname: mysql-server
    restart: always
    ulimits:
      memlock:
        soft: -1
        hard: -1
      nofile:
        soft: 655360
        hard: 655360
    ports:
      - "3306:3306"
    environment:
      MYSQL_ROOT_PASSWORD: 123Mudar@
    
```

#### Verificando as portas TCP abertas

> ```bash
> netstat -ant
> ```  

**Exemplo de saída**  

> ```bash
> Active Internet connections (servers and established)  
> Proto Recv-Q Send-Q Local Address           Foreign Address         State  
> tcp        0      0 127.0.0.53:53           0.0.0.0:*               LISTEN  
> tcp        0      0 0.0.0.0:3306            0.0.0.0:*               LISTEN  
> tcp6       0      0 :::3306                 :::*                    LISTEN  
> ```

**Instalando MySQL Client**  

> ``` bash
> apt install default-mysql-client
> ```

**Testando conexão**  

> ``` bash
> mysql -u root -p123Mudar@ -P 3306
> ```

**Exemplo de saída**  

> ```bash
> Welcome to the MariaDB monitor.  Commands end with ; or \g.
> Your MySQL connection id is 8
> Server version: 8.0.36 MySQL Community Server - GPL
> 
> Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.
> 
> Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.
> 
> MySQL [(none)]>
> ```

### Executa um contêiner com Zabbix Server  

```bash
docker run --name zabbix-server -e DB_SERVER_HOST=mysql -e MYSQL_USER=root -e MYSQL_PASSWORD=123Mudar@ --link mysql-server:mysql --init -d -p 10051:10051 zabbix/zabbix-server-mysql:latest
```

### Executa um contêiner com Zabbix Web Server Linkado ao Zabbix Server e ao MySQL Server  

```bash
docker run --name zabbix-web -e DB_SERVER_HOST=mysql -e MYSQL_DATABASE=zabbix -e MYSQL_USER=root -e MYSQL_PASSWORD=123Mudar@ --link mysql-server:mysql --link zabbix-server:zabbix-server -e ZBX_SERVER_HOST=zabbix-server -e PHP_TZ=America/Sao_Paulo -p 8080:8080 -p 8443:8443 -d zabbix/zabbix-web-apache-mysql:latest
```

```yml
# Zabbix server
version: '3.7'

services:
  zabbix-server:
    image: zabbix/zabbix-server-mysql:latest
    init: true
    hostname: zabbix-server
    restart: always
    ulimits:
      memlock:
        soft: -1
        hard: -1
      nofile:
        soft: 655360
        hard: 655360
    ports:
      - "10051:10051"
    environment:
      DB_SERVER_HOST: 172.17.0.1
      DB_SERVER_PORT: 3306
      MYSQL_USER: root
      MYSQL_PASSWORD: 123Mudar@

  zabbix-web:
    image: zabbix/zabbix-web-apache-mysql:latest
    init: true
    hostname: zabbix-web
    restart: always
    ulimits:
      memlock:
        soft: -1
        hard: -1
      nofile:
        soft: 655360
        hard: 655360
    ports:
      - "8080:8080"
      - "8443:8443"
    environment:
      DB_SERVER_HOST: 172.17.0.1
      DB_SERVER_PORT: 3306
      MYSQL_USER: root
      MYSQL_PASSWORD: 123Mudar@
      MYSQL_DATABASE: zabbix
      ZBX_SERVER_HOST: 172.17.0.1
      ZBX_SERVER_PORT: 10051
      PHP_TZ: America/Sao_Paulo
```

> **Usuario: Admin Senha: zabbix**

### Executa um contêiner com Suricata  

```bash
docker run -it --name suricata --net=host --cap-add=net_admin --cap-add=net_raw --cap-add=sys_nice -v /var/log/suricata:/var/log/suricata -v /etc/suricata:/etc/suricata -d jasonish/suricata:latest -i eth0
```

```yml
# Suricata
version: '3.7'

services:
  suricata:
    image: jasonish/suricata:latest
    hostname: suricata
    restart: always
    ulimits:
      memlock:
        soft: -1
        hard: -1
      nofile:
        soft: 655360
        hard: 655360
    cap_add:
      - net_admin
      - net_raw
      - sys_nice
    network_mode: host
    volumes:
      - '/var/log/suricata:/var/log/suricata'
      - '/etc/suricata:/etc/suricata'
      - '/var/lib/suricata/rules/my.rule:/var/lib/suricata/rules/my.rule'
    environment:
      SURICATA_OPTIONS: "-i enp0s3"
```

### Executa um contêiner com Apache WebServer  

```bash
docker run -dit --name apache -p 80:80 -v /usr/local/apache2/htdocs:/usr/local/apache2/htdocs/ httpd:2.4
```

```yml
# Apache-httpd
version: '3.7'

services:
  apache:
    image: httpd:2.4
    hostname: apache-httpd
    restart: always
    ulimits:
      memlock:
        soft: -1
        hard: -1
      nofile:
        soft: 655360
        hard: 655360
    ports:
      - "80:80"
    volumes:
      - '/usr/local/apache2/htdocs:/usr/local/apache2/htdocs'
```

### Executa os contêineres com Wazuh  

[https://documentation.wazuh.com/current/deployment-options/docker/wazuh-container.html](https://documentation.wazuh.com/current/deployment-options/docker/wazuh-container.html)

```bash
git clone https://github.com/wazuh/wazuh-docker.git -b v4.7.4

cd wazuh-docker/single-node/

docker-compose -f generate-indexer-certs.yml run --rm generator

docker-compose up -d

wget https://packages.wazuh.com/4.x/apt/pool/main/w/wazuh-agent/wazuh-agent_4.7.4-1_amd64.deb && sudo WAZUH_MANAGER='127.0.0.1' dpkg -i ./wazuh-agent_4.7.4-1_amd64.deb

service wazuh-agent start
```

### Executa um contêiner com Grafana  

```bash
docker run -d --name=grafana -p 3000:3000 grafana/grafana
```

```yml
# Grafana
version: '3.7'

services:
  grafana:
    image: grafana/grafana-enterprise
    container_name: grafana
    restart: unless-stopped
    environment:
     - GF_SERVER_ROOT_URL=http://my.grafana.server/
     - GF_INSTALL_PLUGINS=grafana-clock-panel
    ports:
     - '3000:3000'
    volumes:
     - grafana_storage:/var/lib/grafana
volumes:
  grafana_storage:
```

### Executa um contêiner com Wordpress

```bash
docker run --name wordpress bitnami/wordpress:latest

docker-compose -f wordpress.yml wordpress up –d
```

> [http://localhost:8880](http://localhost:8880) - Usuário: user Senha: bitnami

[https://github.com/bitnami/containers/blob/main/bitnami/wordpress/README.md](https://github.com/bitnami/containers/blob/main/bitnami/wordpress/README.md)

```yml
# Wordpress
version: '3.7'

services:
  wordpress:
    image: bitnami/wordpress:6
    container_name: wordpress
    restart: unless-stopped
    environment:
     - ALLOW_EMPTY_PASSWORD=yes
     - WORDPRESS_DATABASE_HOST=172.17.0.1
     - WORDPRESS_DATABASE_PORT_NUMBER=3306
     - WORDPRESS_DATABASE_USER=root
     - WORDPRESS_DATABASE_NAME=bitnami_wordpress
     - WORDPRESS_DATABASE_PASSWORD=123Mudar@
     - BITNAMI_DEBUG=true
    ports:
     - '8880:8080'
     - '8843:8443'
    volumes:
     - 'wordpress_data:/usr/bitnami/wordpresss'
volumes:
  wordpress_data:
```

## Configuração das aplicações

* Zabbix
  * Agent v2
    * Instalação do agente para o server e para os dispositivos monitorados
      * apt install sudo
      * usermod -aG docker zabbix
  * Scripts
    * Scripts para coleta de coordenada geográfica
    * Scripts para análise de logs
  * Itens
  * Logs
  * Templates
* MySQL
  * Logs
  * Permissões de acesso
* Suricata
  * Rules
    * suricata-update
  * Logs
* Grafana
  * Plugins
    * [https://grafana.com/grafana/plugins/alexanderzobnin-zabbix-app/?tab=overview](https://grafana.com/grafana/plugins/alexanderzobnin-zabbix-app/?tab=overview)
    * [https://storage.googleapis.com/integration-artifacts/alexanderzobnin-zabbix-app/release/4.4.9/linux/alexanderzobnin-zabbix-app-4.4.9.linux_amd64.zip](https://storage.googleapis.com/integration-artifacts/alexanderzobnin-zabbix-app/release/4.4.9/linux/alexanderzobnin-zabbix-app-4.4.9.linux_amd64.zip)
    * [http://192.168.0.149:8080/api_jsonrpc.php](http://192.168.0.149:8080/api_jsonrpc.php)
  * Data sources
    * Zabbix
* Apache
  * Logs
  * Virtual hosts
  * Modulos
* Wordpress
  * Banco de dados
    * Criar um banco de dados com nome bitnami_wordpress
  * config.inc.php
  * Pastas e arquivos "coringa" para os testes
* Wazuh
  * Instalação do agent nas VMs monitoradas
  * Nível de exibição dos alertas
    * Management -> Coonfiguration -> Edit configuration
      * <log_alert_level>3</log_alert_level>
  * Módulos ativos
  * Logs dos agentes - [https://documentation.wazuh.com/4.7/user-manual/capabilities/log-data-collection/monitoring-log-files.html](https://documentation.wazuh.com/4.7/user-manual/capabilities/log-data-collection/monitoring-log-files.html)
    * /var/ossec/etc/ossec.conf

      ```bash
        <localfile>
          <location>/<FILE_PATH>/file.log</location>
          <log_format>syslog</log_format>
        </localfile>  
      ```

## Simulando ataques no ambiente

* Scan e Recon - [https://www.kali.org/tools/](https://www.kali.org/tools/)
  * Nmap

    ```bash
    nmpa -sS -v -A -T4 –p- <host>
    ```
  
  * Gobuster

    ```bash
    gobuster dir -u <url> -w <word_list>
    ```

  * Dirb

    ```bash
    dirb <url> <word_list>
    ```

  * Sqlmap

    ```bash
    sqlmap -u "<url>"
    ```

## Verificando informações coletadas

* Itens de descoberta zabbix
* Itens do template do zabbix
* Eventos coletados pelo Wazuh
* Eventos Coletados pelo Suricata

## Trabalhando com logs

```bash
#!/bin/bash

pattern=$1
log_file_path=$2

count=$(grep -c "$pattern" "$log_file_path")

echo $count
```

### Busca por um padrão em um arquivo de log

```conf
UserParameter=<chave>,/usr/local/bin/zabbix.sh "<padrão da busca>" "/var/log/<arquivo>.log"
```

### Pega latitude e longitude

```powershell
Add-Type -AssemblyName System.Device #Required to access System.Device.Location namespace
$GeoWatcher = New-Object System.Device.Location.GeoCoordinateWatcher #Create the required object
$GeoWatcher.Start() #Begin resolving current locaton

while (($GeoWatcher.Status -ne 'Ready') -and ($GeoWatcher.Permission -ne 'Denied')) {
    Start-Sleep -Milliseconds 100 #Wait for discovery.
}  

if ($GeoWatcher.Permission -eq 'Denied'){
    Write-Error 'Access Denied for Location Information'
} else {
    $GeoWatcher.Position.Location.Latitude.toString().Replace(',','.')
    $GeoWatcher.Position.Location.Longitude.toString().Replace(',','.')
}
```

## Criando dashboards com os indicadores

* Tentativas de acesso
* Logins incorreto
* IPs de origem
* Scan de rede
* Movimentação do equipamento

## Configurando notificações

* Severidade do alerta
* Tipo de mídia
* Grupo

## Automatizando a criação do ambiente

* Montando um yml único

## Referências

* [Visão geral sobre observabilidade | Microsoft Learn](https://learn.microsoft.com/pt-br/azure/security/container-secure-supply-chain/articles/container-secure-supply-chain-implementation/observability-overview)
* [Observabilidade em segurança cibernética: o que é e por que usar? | Novared](https://novared.com.br/observabilidade-em-seguranca-cibernetica-o-que-e-e-por-que-usar/#:~:text=A%20observabilidade%20%C3%A9%20um%20processo,opera%C3%A7%C3%A3o%20de%20um%20ambiente%20digital.)
* [Observabilidade de Segurança em Aplicações Web | GoCache](https://www.gocache.com.br/observabilidade-sobre-seguranca-e-aplicacoes/)
* [Observabilidade na TI: o que é e quais seus 3 pilares | Softwall](https://www.softwall.com.br/blog/observabilidade-ti-o-que-e-pilares/)
* [Como melhorar a competitividade dos negócios com observabilidade | Azion](https://www.azion.com/pt-br/blog/como-melhorar-a-competitividade-dos-negocios-com-observabilidade/#:~:text=Para%20implementar%20a%20observabilidade%20%C3%A9,suficiente%20para%20atingir%20esses%20objetivos.)
* [Entenda o conceito de observabilidade e sua diferença para o monitoramento | InterOp](https://www.interop.com.br/blog/observabilidade/)
* [Conceitos de Observabilidade que voce precisa saber | Tiago Dias Generoso | Medium](https://tiagodiasgeneroso.medium.com/conceitos-de-observabilidade-que-voce-precisa-saber-c066b78ccd2d)
