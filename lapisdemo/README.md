# lapis demo

## how to run

* build lapi image(from openresty and with luarock install lapis)

```shell
docker build -t mylapis2 -f Dockerfile-base . 
```

* build lapis demo image

```bash
docker build -t mylapisdemo .
```

* run lapisdemo web

```bash
docker run -d -p 8085:8080 mylapisdemo
```

## view result

```bash
curl -i http://hostip:8085

HTTP/1.1 200 OK
Server: openresty/1.11.2.1
Date: Thu, 22 Mar 2018 06:56:37 GMT
Content-Type: text/html
Transfer-Encoding: chunked
Connection: keep-alive

<!DOCTYPE HTML><html lang="en"><head><title>Lapis Page</title></head><body>Welcome to Lapis 1.6.0</body></html>%

curl -i http://hostip:8085/user

HTTP/1.1 200 OK
Server: openresty/1.11.2.1
Date: Thu, 22 Mar 2018 06:56:37 GMT
Content-Type: text/html
Transfer-Encoding: chunked
Connection: keep-alive
[{"name":"addddddddddppdemo","id":1}]

```

## init mysqldb for docker (include jenkinsfile pipeline build)

```bash
just see
https://github.com/rongfengliang/golangmysql-docker```
