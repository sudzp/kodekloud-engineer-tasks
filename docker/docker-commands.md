# Docker Commands 

### Task: Create docker network named ecommerce with given driver and subnet

```
$sudo docker network create --driver=macvlan --subnet=192.168.30.0/24 --ip-range=192.168.30.3/24 ecommerce
```
