# Gentoo Box

This is the most minimal stage3 installation of Gentoo (amd64, openrc) that is possible to package into a Vagrant box file. VirtualBox version is provided.


## Build 

> Install Packer

```shell
emerge -v packer
```


> BUILD:


```shell
packer build virtualbox.json 
```


## ref

https://github.com/d11wtq/gentoo-packer
