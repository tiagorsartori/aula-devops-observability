# Criando ambiente com contêineres

## Comandos úteis  

### Lista todos os contêineres  

```bash
docker ps -a
```

### Inicia todos os contêineres iniciados  

```bash
docker ps
```

### Calcula o tamanho utilisado pelos contêineres  

```bash
docker start $(docker ps -a -q)
```

### Inicia todos os contêineres  

```bash
docker start $(docker ps -a -q)
```

### Para todos os contêineres  

```bash
docker stop $(docker ps -a -q)
```

## Executa um contêiner com MySQL Server versão 8.0

```bash
docker run --name mysql-server -e MYSQL_ROOT_PASSWORD=123Mudar@ -p 3306:3306 -d mysql:8.0
```

### Verificando as portas TCP abertas

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

## Executa um contêiner com Zabbix Server  

```bash
docker run --name zabbix-server -e DB_SERVER_HOST=mysql -e MYSQL_USER=root -e MYSQL_PASSWORD=123Mudar@ --link mysql-server:mysql --init -d -p 10051:10051 zabbix/zabbix-server-mysql:latest
```

## Executa um contêiner com Zabbix Web Server Linkado ao Zabbix Server e ao MySQL Server  

```bash
docker run --name zabbix-web -e DB_SERVER_HOST=mysql -e MYSQL_DATABASE=zabbix -e MYSQL_USER=root -e MYSQL_PASSWORD=123Mudar@ --link mysql-server:mysql --link zabbix-server:zabbix-server -e ZBX_SERVER_HOST=zabbix-server -e PHP_TZ=America/Sao_Paulo -p 8080:8080 -p 8443:8443 -d zabbix/zabbix-web-apache-mysql:latest
```

> **Usuario: Admin Senha: zabbix**

## Executa um contêiner com Suricata  

```bash
docker run -it --name suricata --net=host --cap-add=net_admin --cap-add=net_raw --cap-add=sys_nice -v $(pwd)/logs:/var/log/suricata -v $(pwd)/etc:/etc/suricata -d jasonish/suricata:latest -i eth0
```

## Executa um contêiner com Apache WebServer  

```bash
docker run -dit --name apache -p 80:80 -v $PWD/usr/local/apache2/htdocs:/usr/local/apache2/htdocs/ httpd:2.4
```

## Executa um contêiner com Grafana  

```bash
docker run -d --name=grafana -p 3000:3000 grafana/grafana
```








https://documentation.wazuh.com/current/deployment-options/docker/wazuh-container.html
git clone https://github.com/wazuh/wazuh-docker.git -b v4.7.4
cd wazuh-docker/single-node/
docker-compose -f generate-indexer-certs.yml run --rm generator
docker-compose up -d
wget https://packages.wazuh.com/4.x/apt/pool/main/w/wazuh-agent/wazuh-agent_4.7.4-1_amd64.deb && sudo WAZUH_MANAGER='127.0.0.1' dpkg -i ./wazuh-agent_4.7.4-1_amd64.deb
service wazuh-agent start

apt-get update && apt-get install python3
apt-get install python3-pip
pip3 install docker==4.2.0 urllib3==1.26.18

