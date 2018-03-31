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
```
ADMIN_PASSWORD=your_pass
DATABASE_PASSWORD=your_pass
RABBIT_PASSWORD=your_pass
SERVICE_PASSWORD=your_pass

HOST_IP=10.0.2.15 (ip of Linux machine in the current)
FLOATING_RANGE=10.0.2.224/27
```

Ctrl O -> y (Save & exit)

## 6. Now you start your installation process

`./stack.sh`

After installed, terminal display some information to access:

```
This is your host ip address: <YOUR_IP>
This is your host Ipv6 address: <YOUR_IP>
Horizontal is now available at http://domain.com/dashboard
Keystone is serving at http://domain.com/identity
The default user are: <YOUR_USERS>
The password: <YOUR_PASSWORD>
```

**xxx** Change default http port in openstack dashboard?

Centos 7.4 instruction:

1. **Change Puppets module ports file config /etc/httpd/conf/ports.conf:**
+ Change line **Listen 80** to **Listen 8888**

2. **Change default host port `/etc/httpd/conf.d/15-default.conf`:**
+ Change line **<VirtualHost *:80>** to **<VirtualHost *:8888>*

3. **Change Horizon host port `/etc/httpd/conf.d/15-horizon_vhost.conf`**:
+ Change line **<VirtualHost *:80>** to **<VirtualHost *:8888>**

4. **Restart http server:**

`systemctl restart httpd.service`

Modify iptables:
+ List the iptables rules with line numbers and remember one with Horizon (11 in my case)

```
$ iptables -L -n --line-numbers
[...]
11 ACCEPT tcp -- 0.0.0.0/0 0.0.0.0/0 multiport dports 80 /* 001 horizon 80 incoming */
[...]
```
+ Insert the new rule at 11
```
$ iptables -I INPUT 11 -p tcp -m multiport --dports 8888 -j ACCEPT -m comment --comment "001 horizon 8888 incoming"
$ service iptables save
iptables: Saving firewall rules to /etc/sysconfig/iptables:[  OK  ]

```
+ Remove the old rule (11 + 1 = 12, check it: `iptables -L -n --line-numbers`)

```
$ iptables -D INPUT 12
$ service iptables save
iptables: Saving firewall rules to /etc/sysconfig/iptables:[  OK  ]

```




