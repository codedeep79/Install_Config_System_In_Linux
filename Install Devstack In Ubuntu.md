DevStack help deploy OpenStack in Linux for developer. OpenStack is open source software is used to deploy cloud computing consist of public cloud and private cloud. Install devstack require on Linux environment 

Some feature:
+ Devstack was writen entire by Shell
+ Devstack install from source git
+ Devstack can use to install versions of Openstack (Liberty, Kilo, Juno ...) 
+ Devstack is used to test of develop the feature in the version of Openstack


## 1. Before starting installation process you should update and upgrade system

```
sudo apt-get update
sudo apt-get upgrade
```

## 2. Create a new user and allocate permission to start the openstack installation 

```
sudo adduser stack
sudo -i
echo "stack ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
```

## 3. Download the DevStack from Github

```
sudo apt-get install git
git clone https://github.com/openstack-dev/devstack.git
```

## 4. Run the following commands to avoid errors before installation:

**Lock Error**
```
sudo rm /var/lib/dpkg/lock
sudo rm /var/lib/apt/lists/lock
sudo rm /var/cache/apt/archives/lock
sudo rm -rf /var/lib/apt/lists/*
```
## 5. Configure local.conf file

```
  cd devstack
  cd sample 
  cp local.conf ../
  cd ..
  nano local.conf
```

