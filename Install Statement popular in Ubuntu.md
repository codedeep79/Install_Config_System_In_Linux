### 1. How to list all installed packages?
> `apt list --installed`

> **Old version:** `dpkg --get-selections | grep -v deinstall` 

> **Or simple:** `dpkg -l`

> **Get a list of a specific package installed:** `dpkg --get-selections | grep <program_name>`.

> **Example:** `dpkg --get-selections | grep postgres`

### 2. How to find the Process ID (PID) of a running terminal program ?

+ **Search Pid with number port:**

> **Show all server program listening to port:** `netstat -pltn`

> **Search pid via port:** `sudo lsof -i:<port_number>`

+ **Search Pid via specified program:**

> **Search Pid of firefox:** `ps aux | grep -i firefox`

### 3. Kill programs are running: 

> `kill <PID>`

> **Search PID and kill program:** `ps ax | grep firefox | cut -f2 -d" " - | xargs kill -9`

### 4. Remove program 

> `sudo apt-get purge <program_name>`

> `sudo apt-get remove --purge <program_name>`

> `sudo apt-get autoclean`

> And other way if you use as above fail:

> `sudo apt-get update`

> `sudo apt-get install aptitude`

> `sudo aptitude remove <package>`

+ **Ex: Remove docker completely from ubuntu 14.04**

> `sudo apt-get purge -y docker.io`

> `sudo apt-get autoremove -y --purge docker.io`

> `sudo apt-get autoclean`

> `sudo rm -rf /var/lib/docker`

> `sudo rm /etc/apparmor.d/docker`

> `sudo groupdel docker`

+ **Ex: Remove virtualbox**

> `sudo apt-get remove --purge virtualbox`

> `sudo rm ~/"VirtualBox VMs" -Rf`

> `sudo rm ~/.config/VirtualBox/ -Rf`

### 5. Error: Cannot remove directory/: Permission denied

> `sudo rm -rf ./<folder_name>`
