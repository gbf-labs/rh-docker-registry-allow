# Installation

```bash
git clone git@10.8.2.5:joseartiaga/docker-registry-allow.git
cd docker-registry-allow/
sudo sh dockerregdaemon.sh
docker images
docker tag <image name>:<tag> git.rhbox.io:5000/<name you want>:<version you want>
ex: docker tag rhapi:latest git.rhbox.io:5000/rhapi-test:v0.0.1
docker images
docker login git.rhbox.io:5000
docker push git.rhbox.io:5000/rhapi-test:v0.0.1
```


## Configuration of Docker Registry

```bash
git clone git@10.8.2.5:joseartiaga/docker-registry.git
cd docker-registry 
docker-compose -f docker-compose.yml up -d 
docker ps -a (Check running containers)
cd auth
htpasswd -Bc registry.password username (create username)
htpasswd registry.password username (add username)
cd data/docker/registry/v2/repositories (check all pushed images)
```

## Docker Registry Client Access

```bash
ip l (Check if you are using tun0 or tun1)
Note: tun0 (git.rhbox.io or 10.8.2.5), tun1 (vgit.rhbox.io or 10.10.100.5)
Example for tun0: docker login git.rhbox.io:5000 (Enter your username and password)
Access Docker Registry Web UI: git.rhbox.io:8085 or vgit.rhbox.io:8085 / IP Address
Please see top "Installation" content for docker push and pull of images
```