# Docker Installation Steps in Linux (Fedora Linux)- 
1. Check if the docker installed already - 
```
$ docker --version
```
2. If above command doesn't provide information about the docker version installed, we need to install docker. 
3. Now, to install docker engine on your machine, first upgrade your system using following command - 
```
$ sudo dnf upgrade
```
4. After finishing above step, we can start installation of docker. Now, first we need to setup a docker repository using following commands - 
```
$ sudo dnf -y install dnf-plugins-core

$ sudo dnf config-manager \
    --add-repo \
    https://download.docker.com/linux/fedora/docker-ce.repo
```
5. Now, install the docker engine, containerd, and docker-compose - 
```
$ sudo dnf install docker-ce docker-ce-cli containerd.io docker-compose-plugin
```
6. The above command installs the components required for docker and creates a group called `docker`. Now, to start the docker use following command - 
```
$ sudo systemctl start docker
```
7. To verify if docker started properly - 
```
$ sudo systemctl status docker
```
8. To verify installation is proper - 
```
$ sudo docker run hello-world
```
&nbsp; Here's the screenshot of hello-world run in my machine - 
![docker-hello-world-image-run-result](images/hello-world-result.png)

9. Now, if one wants to avoid using sudo before docker commands, we can eliminate it by adding an user to docker group - 
```
$ sudo usermod -aG docker $USER
```
10. Logout or sometimes even reboot the system to make above change effective and verify using - 
```
$ docker run hello-world
```
11. Configure docker to start on OS boot - 
```
$ sudo systemctl enable docker.service

$ sudo systemctl enable containerd.service
```


# Configuration of Ubuntu Image and SysBench on Top of it - 
1. First, pull the latest image of ubuntu available using - 
```
$ docker pull ubuntu:
```
&nbsp; Below screenshot shows the pulling of ubuntu image -\
![docker-pull-ubuntu](images/ubuntu-pull.png)\

2. List out the images present to verify the docker has pulled ubuntu image - 
```
$ docker image ls
``` 
&nbsp; Below screenshot shows the list of available images -\ 
![docker-image-ls](images/docker-image-ls.png)\

3. Now, lets launch the ubuntu container - 
```
$ docker container run -it ubuntu:latest /bin/bash
```
&nbsp; Below screenshot shows the run of ubuntu container -\ 
![docker-run-ubuntu](images/docker-run-ubuntu.png)\

4. Now, to install sysbench, use following set of commands inside ubuntu container - 
```
$ curl -s https://packagecloud.io/install/repositories/akopytov/sysbench/script.deb.sh | sudo bash
$ apt -y install sysbench
```
> ##### Note - 
In the ubuntu container, since it comes with very few packages, when we run above commands, we get an error showing -\
![curl-sudo-not-found](images/curl-sudo-missing.png)\
This is obvious because the image does not come up with these two commands. So, we need to install them first using -\
$ apt install curl\
$ apt install sudo

5. After sysbench install command completes, verify the installation - 
```
$ sysbench --version
```
&nbsp; Below screenshot shows the version of sysbench installed in ubuntu container -\ 
![sysbench-version](images/sysbench-version.png)\



