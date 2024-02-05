# aula-devops-observability  

## Aula de observabilidade e segurança - pós devops  

> Executa um contêiner com MySQL Server versão 8.0

```bash
docker run --name mysql-server -e MYSQL_ROOT_PASSWORD=123Mudar@ -p 3306:3306 -d mysql:8.0
```

> Executa um contêiner com Zabbix Server  

```bash
docker run --name zabbix-server -e DB_SERVER_HOST=mysql -e MYSQL_USER=root -e MYSQL_PASSWORD=123Mudar@ --link mysql-server:mysql --init -d zabbix/zabbix-server-mysql:latest
```

> Executa um contêiner com Zabbix Web Server Linkado ao Zabbix Server e ao MySQL Server  

```bash
docker run --name zabbix-web -e DB_SERVER_HOST=mysql -e MYSQL_DATABASE=zabbix -e MYSQL_USER=root -e MYSQL_PASSWORD=123Mudar@ --link mysql-server:mysql --link zabbix-server:zabbix-server -e ZBX_SERVER_HOST=zabbix-server -e PHP_TZ=America/Sao_Paulo -p 8080:8080 -p 8443:8443 -d zabbix/zabbix-web-apache-mysql:latest
```

> Executa um contêiner com Suricata  

```bash
docker run -it --name suricata --net=host --cap-add=net_admin --cap-add=net_raw --cap-add=sys_nice -v $(pwd)/logs:/var/log/suricata -v $(pwd)/etc:/etc/suricata -d jas
onish/suricata:latest -i eth0
```

> Executa um contêiner com Apache WebServer  

```bash
docker run -dit --name apache -p 80:80 -v $PWD/usr/local/apache2/htdocs:/usr/local/apache2/htdocs/ httpd:2.4
```

> Inicia todos os contêineres  

```bash
docker stop $(docker ps -a -q)
```

> Para todos os contêineres  

```bash
docker start $(docker ps -a -q)
```
