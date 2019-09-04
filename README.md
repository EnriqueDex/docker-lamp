# docker-lamp
Servidor LAMP, el objetivo es iniciar un servicio de myphpadmin para administrar una base de datos.

Despues de clonar el repositorio:

```
docker-compose up
```

Se levantan 3 contenedores:

```
docker ps
CONTAINER ID        IMAGE                   COMMAND                  CREATED             STATUS              PORTS                            NAMES
d1f32908c011        nginx:stable-alpine     "nginx -g 'daemon of…"   35 seconds ago      Up 33 seconds       0.0.0.0:81->80/tcp               docker-lamp_nginx_1
42ce24ede4a9        phpmyadmin/phpmyadmin   "/run.sh supervisord…"   36 seconds ago      Up 35 seconds       80/tcp, 9000/tcp                 docker-lamp_php_1
7a37b8a74f28        k0st/alpine-mariadb     "/scripts/run.sh"        37 seconds ago      Up 35 seconds       3306/tcp                         docker-lamp_mysql_1
```

Podemos posteriormente entrar entrar a http://localhost:81, las credenciales se enviaron en las variables de ambiente en el docker-compose myuser/mypass



