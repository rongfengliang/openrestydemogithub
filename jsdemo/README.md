## how to run

```shell
docker build -t myopenresty .
docker run -d -p 8088:80 myopenresty
```

## request result

```shell
http://hostip:8088 (basic openresty welcome page)

http://hostip:8088/alert(javascript alert message)

http://hostip:8088/ip(use openresty to get user realip)
```

## for service mesh

for real application develop web can use this small image to:

* lb
* auth 
* grpc proxy(waiting for some time nginx will support comming soon)
* proxy 
* rate limit
* service discovery
* a/b test
* data copy (with mirror)
