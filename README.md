# Installer Package In Linux

### 1. Install LAMP on Ubuntu 16.04 or later
   [Install Here](https://github.com/flightstar/Installer-Package-In-Linux/blob/master/Install%20Lamp%20Server.md)
### 2. Install LEMP on Ubuntu 16.04 or later
   [Install Here](https://github.com/flightstar/Installer-Package-In-Linux/blob/master/Install%20Lemp%20on%20Ubuntu%2016.04%20or%20later.md)
### 3. Install NodeJs, Yarn, Npm on Ubuntu 16.04 Or Later:
> `curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -`

> `echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list`

> `curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash -`

> `sudo apt-get update`

> `sudo apt-get install nodejs`

> `sudo apt-get install npm`

> `sudo apt-get install yarn`

### 4. Install Sublime Text 3
> `sudo add-apt-repository ppa:webupd8team/sublime-text-3`

> `sudo apt-get update`

> `sudo apt-get install sublime-text-installer`

+ ###### Run Sublime-Text on terminal: `subl`

### 5. Install Docker CE
> `sudo apt-get update`

> `sudo apt-get install apt-transport-https ca-certificates curl software-properties-common`

> `curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -`

> `sudo apt-key fingerprint 0EBFCD88`

> `sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu zesty stable"`

> `sudo apt-get update`

> `sudo apt-get install docker-ce`

+ ###### Test Version Of Docker: `docker --version` 

### 6. Install Visual Studio Code On Ubuntu 16.04 Or Later:

> `curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg`

> `sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg`

> `sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'`

> `sudo apt-get update`

> `sudo apt-get install code` 

### 7. Install Sql Operation Server

###### Download File Source Of them: `https://go.microsoft.com/fwlink/?linkid=868000`

> `cd ~`

> `cp ~/Downloads/sqlops-linux-<version string>.tar.gz ~`

> `tar -xvf ~/sqlops-linux-<version string>.tar.gz`

> `echo 'export PATH="$PATH:~/sqlops-linux-x64"' >> ~/.bashrc`

> `source ~/.bashrc`

> `sqlops`

+ Continuous Install Dependencies Another

> `sudo apt-get install libxss1`

> `sudo apt-get install libgconf-2-4`

> `sudo apt-get install libunwind8`

> `sqlops` (Run Sql Opearation Server)

### 8. Install Ubuntu Cleaner:

> `sudo add-apt-repository ppa:gerardpuig/ppa`

> `sudo apt-get update`

> `sudo apt-get install ubuntu-cleaner`

### 9. Install Ubuntu Bleachbit:

> `sudo apt-get update`

> `sudo apt-get install bleachbit`

### 10. Install Netbean Ubuntu:

> `sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) universe"`

> `sudo apt-get update`

> `sudo apt-get install netbeans`

### 11. Installing Webmin on Ubuntu 17.04 / 17.10

> Webmin is a program GUI type based web inteface with target management process a system Linux or Unix simply. With a browser, you can install User Account, DNS, Mail, Apache, share file and more. Webmin will be actived by root role on System. 

> `sudo sh -c 'echo "deb https://download.webmin.com/download/repository sarge contrib" >> /etc/apt/sources.list'`

> `wget -q http://www.webmin.com/jcameron-key.asc -O- | sudo apt-key add -`

> `sudo apt-get update`

> `sudo apt-get install webmin`

+ Test Webmin: https://ubuntu:10000/ or https://localhost:10000/
+ Sign in: Account User and password login into Linux
+ Start webmin: sudo /etc/init.d/webmin start
+ Stop webmin: sudo /etc/init.d/webmin stop
+ Restart webmin: sudo /etc/init.d/webmin restart

### 12. Install Oracle Java on Ubuntu 17.10

> `sudo apt-get update`

> `sudo apt-get upgrade`

> `sudo apt-get update`

> `sudo add-apt-repository ppa:webupd8team/java`

> `sudo apt-get update`

> `sudo apt-get install java-common oracle-java8-installer`

+ Verify installed Java version:   `java -version` 

### 13. Install / Uninstall Wine 3.0 Stable on Ubuntu
+ ##### Method 1: Install Wine 3.0 in Ubuntu / LinuxMint from Wine Repository
 ***Step 1: Download the key and add to your pc***
> `wget https://dl.winehq.org/wine-builds/Release.key`

>`sudo apt-key add Release.key && sudo apt-add-repository 'https://dl.winehq.org/wine-builds/ubuntu/`

***Step 2: Update your repos***

> `sudo apt-get update`

***Step 3: Install wine 3.0***

> `sudo apt-get install --install-recommends winehq-stable`

+ #####  Method 2: Install Wine 3.0 in Ubuntu / LinuxMint from source file

***Step 1: Download the source file by using the below command***

> `wget https://dl.winehq.org/wine/source/2.0/wine-3.0.tar.xz`

***Step 2: Unzip the file***

> `tar -xvf wine-3.0.tar.xz`

***Step 3: Configure it***

>  For 32 bit `-- sudo ./configure`

>  For 64 bit `-- sudo ./configure --enable-win64`

***Step 4: Compile wine using make***

> `sudo make && sudo make install`

***Once the Wine installation completed, run the below command to check the wine configuration***

> `winecfg`

***Step 5: Run wine 3.0***

> `wine <program name>`

> `wine notepad.exe`

![Run wine 3.0](https://lh3.googleusercontent.com/IEdmKCyT3jd_Ch9qI9LyzV3dHE8SGAtjfogenJU8OFBGwSTw2rU64bvyz6OewQoT1zAMiScO46gEOGKBLMPbN7uYyeuUi_-7PDeDnW2mkdxWW49gvjtA_RKbgfktM0cCzroapVovMFd2uBdf-zS8jwrsllIPPkdE7x3EilmEsdrNBqxYd--ePq-mjFJfewwEFphMVq5K3TC00sf1j9Zt9Y4PGWS9ZR5ZS7HlHF5yP2INoFw63vbvQvRNvUtIKrWwfPH5Hz1wSJWRUeezwX1vYH5f6OZBOZDKnirFYh3lVD2PqZeElqpikq1jO9lAJwaLvXQPFmIQhsC3Yb7R4UjooiM4vxychWuqVnwkx4KjNZyAonOd4ophyBVqohrja96rrdD6WO26U8aGoxZ96ZzZ11hgr7LofzeMLRIqB8LdnmNOH3WnsySF8Hiacd_ja0UQEpOk1cKhPJYdNj-rTpBU8nG0h2A0y-SWDtGqplVx0YLturWyqTjM24mis37Hm6Zl0ONMJHYosU8wFaq_YDwgk76KDKk5Qp6zoNbOs_YfHqA1uCfbJ6tj_mkZ2XZIP7pNMbeDcSBFyFhBpK47xdBpES9kw7SGcOwc6Ae1TAM=w786-h609-no)

+ ##### For Un-installation use the below command:

> `sudo apt-get remove --autoremove wine-stable wine-stable-amd64`

### 14. Install Kubernetes On Ubuntu 16.04 Or Later

+ > [Use Kubeadm To Deploy For Real System](https://github.com/flightstar/Installer-Package-In-Linux/blob/master/Install%20Kubeadm%20On%20Ubuntu%2016.04%20Or%20Later.md) 


+ > [Use Minikube To Deploy For Localhost](https://github.com/flightstar/Installer-Package-In-Linux/blob/master/Install%20Minikube%20On%20Ubuntu%2016.04%20Or%20Later.md) 

### 15. The statement popular use Ubuntu
[Read more](https://github.com/flightstar/Installer-Package-In-Linux/blob/master/Install%20Statement%20popular%20in%20Ubuntu.md)

### 16. How to Install Go 1.9 on Ubuntu 17.10, 16.04, 14.04 & LinuxMint

+ #### Step 1: Install Go Language

> `sudo apt-get update`

> `sudo apt-get -y upgrade`

> `wget https://dl.google.com/go/go1.9.4.linux-amd64.tar.gz`

> `sudo tar -xvf go1.9.4.linux-amd64.tar.gz`

> `sudo mv go /usr/local`

+ #### Step 2: Setup Go Environment

We need to set 3 environment variables as **GOROOT**, **GOPATH** and **PATH**.

**GOROOT** is the location where Go package is installed on your system.

> `export GOROOT=/usr/local/go`

**GOPATH** is the location of your work directory. For example my project directory is **~/Projects/Proj1.**

> `export GOPATH=$HOME/Projects/Proj1`

Now set the **PATH** variable to access go binary system wide.

> `export PATH=$GOPATH/bin:$GOROOT/bin:$PATH`

+ #### Step 3: Verify Installation

First, use the following command to check Go version.

> `go version`

Now also verify all configured environment variables using following command.

> `go env`

### 17. Install byobu to another feature on Ubuntu 16.04:

Help you work on multi screen terminal:

Install Ubuntu: 

> `sudo apt-get install -y byobu`

Install CentOS:

> `yum install -y byobu`

To open byobu terminal and type `byobu` and below result:

![open byobu terminal](https://lh3.googleusercontent.com/6wsLq3lVlWKIaRqEMnfLG-ndyv-u9d93NPaVgtsSqwLtDwZxh0aOQuQIwpdWDCPafG7jwZzVhWSdZ1A-sQJgVIckbvYASFfaacKdeE7uA5SiLrbrFPnkSXvzDCEszHyJcMuG4wtkRv3CueHVMDWOb-le8FYsu-fTXgSuKkNUT4hDEBWrlXlhrc_21hU-DS2MkpVWSh8iFhXPK-f0zd0ci7U7zuffACdLaBLI8lhhhTh9Epo4ZeuN-xXPbUxwrcVDqIJdI0P3vxy3QZ6JDZPSbJJQNnaGT3evehlsTDiUes8QYVq7iXltlfsGPH9tqCJe7Oye6iN2RfKBdMmCjYgaQ8tWWSuGkkR4VJk8QE73rm8OOV5xnJyfZs_1cD0hfi41QHMFu5BcJgbFPFy6tK48lar44WKOBj8y-P_3r5KztsCvBs7bjaZfXWaerUOGzTxrVzUp0sdZEceLAlormVV5fhlhpZWEcRB4ofB35RCFxKVqJKeEllOScxIN8dIJ-KF9auuHnm5MI8fVb53aSEK5oFeFTYXcc2gKU-3pWJPvhENi9TejuaHx3ArZrLg7NRz2b_jeHAo_KkQ1quhotcZr2qArX9YNj_OsNQk9imI1FY7bGYl7DFBG67hUno_UwOk36qiUJJ2z_emnFFeWLWbWImVvjuHo8bxq=w760-h493-no)

To need help, you  can press `Shift + F1`:

![To need help](https://lh3.googleusercontent.com/_4bcl19Le4LalZFKhmsIhF5BD1-z1Gvb8Gpxt-fXKVFzH_quqoVs5-dQ909UZ3MYFcIpu4aBTqn9ZKbZ1_ZS1cXhtE-8lEcCgcKA7VzoffM5B_h_sNnYKuPDhZV_7s7Rw-R1C7D84VwVrLRSpJR7QU2QFeMdSy7qFGwSz5JW1RbtFt1hmk4T-01MW3PtOF-9_N_EWwC_scCeCKnyNRCl5GWsrbEG6iMUlVQYZb9MQL_3yzjaEXfbsAkluYSzYcGJeXAc2eOjFu5Vk_3UTibO_9sV_0-f_UtAohuOgCaBBQUDXfl7tEuXL-IrbXUaVwlh6Y9PTb6uNiUNYG_hx7LY1DEGWHoSxy7K32lsH3MuthYOwksEXPBrrANfobYsDOFy5GZ1T7zUiV7kKeYoNhAkp-j_wdSqbGwL3K5hMm4FN5kDO9QtCVEOKUaBNU9fnkBPh2lYgrhjy-Xh_NqL5n1JSoA1TN4e2r4HHb1-dGT6KOueC8_jgHkgIgi9vwVvFKZZFYyhaPy2SrRVieR-EbfiFFfnuKXpjmSrqmyvo6XmcoSC1ML94sZQ-DttXtFnjsCgQvnpr27rrU03n1eWV_gRUqeGHXFd0i5BB9zTRyLuOKhinbgB7VfKDTsIfTpjVH_JXOh9PsY9N9irCATiD5FjMLWVvYAR3oex=w1024-h639-no)

To split the screen vertically, you can press `Ctrl + F1`:

![To split the screen vertically](https://lh3.googleusercontent.com/0PskNmwUoReCUmGdTulWPDii2CxuYoFk951GL_jHQnseSx9_TxtqQ5bA5Vx1UMyv_OX97JStOOXMLZAmJHvsTPwEHD9NUQOOpOYuCLSMWeqRq3SOUaajXxZbfJ9x8yckXDo36nkouaIOEpBfRRy3eggbKUazEAfZ4Y5B5sKnFn7JT-LhoLYMSEe_dsC71o-ANcPjhiDQZ1j4E5cA3qOYYz_X3k60wJBKZwVl-DM1DVy498Y2Y-Y9x_qP-6XsshRMDW5YS_hVQ6hphn0hJe81pxvRjQyYv5AM-quuPSNjZCKaNNO5owL-j6DtE4phwp6VVXNvgh26z68XYSj9nqogfWW1ILaqN1cjUjfrs_M1VCeywAwHprupsAJwp6biC1UVcgOODY6pR94501IpEx9prRfIEeXRELmUlY3iV5YqsrcX5IyXvRb8qEvudJVRpib5B4qkriTGNG2XkplKDwWjC_XIhwM2hJwUGikJSQD0DjQTkPupny0mBJyMAZXCzOHFuVXaE4Yczgm2_QUg09TSEDL0sPVGN-T-QQIVcCqKxzs13vhUaUXEaY217SM4mxJT-UOy_AsVTLBcF87_nqIKe16LWyuTcobHZQGOL4CSIm2k0i0Nv216OQOLwkMVjCMMDo2q847GCj54zKzEjSJB-zu3EwyMwf1z=w1067-h639-no)

To split the screen horizontal, you can press `Shift + F2`:

![](https://lh3.googleusercontent.com/FQwR0q-hPo8Z8JM_IYEblQvOE_tGItu3ARtA8WU-oKrtVQOrbUI0rWgz6oubudOXw7BwWPOitPXS9zeGt8t4HJ0a24yhvJA0knoozUqJ5KcKsc_Q4PXPXBggAzBaIFXtt6o175vAyefAO8whi5SA7TTtlfRdmLafGxfDR2gGTKCjn0E4RpUcS4eUC4o2NmDsT1xzJOnq5WblYwnNATMBYzphT950rL5Ywd_vkvGbXrPSrLqX7M11l4UdiVAZOTmaOkZwFAxJW1J_TvF3c8NHlyEbksVeZQYQvtHZOoWaXdiRC3ANAXUUG2K8voVCtSpzgTJc_uqzUXQvKhAY5hW8g6EMw9Y81qbk8rI0YGsHpk-3l50-2nM-KPZfid_5Z9ETUWWM3yGtrTSpxBwMFy6ccQiZ23o1yNa5WRiKosChtF44aE1asrXepbziNwOmPLaAKNSXE5AelGvkE1ea1XAX_JzcHW0I7yf6gpdz_lXfPM1MfSoIFJwziYZp8xDiR8yMcRC3OBFnjgdAI2xpI02sF-bOzSEjXdnb83kEOoUJiVsvVX5Q03VkCbSX4Fu18Kwo0FnpEftn9Q0UJIAzK52_Ddg8T7FMX8ixalGgXVJtx0S8TSbFWElw_XVqHJCwADA4hLbs1uXGGxUUuETtVCqylsHQA7P7U4NI=w1097-h639-no)

Press `F6` to close a tab on byobu terminal

### 18. Install gparted to resize/extend in Ubuntu 

> `sudo apt-get install gparted`

If you didn't start gparted under Ubuntu 17.10, you have to use 2 statement:

> `xhost +si:localuser:root`

> `gparted-pkexec`

After finished, you can start gparted in the normal  

### 19. Install Hadoop 2.7.0 Single Node Cluster 

[Install here](https://github.com/flightstar/Installer-Package-In-Linux/blob/master/Install%20Hadoop%20on%20Ubuntu%2016.04%20or%20later.md)

### 20. Install and Secure MongoDB 3.6 on Ubuntu 17.10
+ **Import the public key used by the package management system**
```
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
```
+ **Create a list file for MongoDB**
```
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.6 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.6.list
```
+ **Reload local package database and install MongoDB**
```
sudo apt-get update
```
   + Then install MongoDB:
   ```
   sudo apt-get install -y mongodb-org
   ```
+ **Verify that MongoDB runs and starts at system reboot**
   + Next, start MongoDB with `systemctl`.
   
   ```
   sudo systemctl start mongod
   ```
   + You can also use systemctl to check that the service has started properly.

   ```
   sudo systemctl status mongod
   ```
   + The last step of the installation process is to enable the automatic launch of MongoDB when the system starts.

   ```
   sudo systemctl enable mongod
   ```
   **The MongoDB server is now installed and running. You can manage the MongoDB service using the systemctl commands. For example `sudo systemctl mongodb stop` to stop the service or `sudo systemctl mongodb start` to start it again.**
+ **Create a new MongoDB admin user**

If you were to run the `mongo` command in the terminal, you will most likely notice a warning looking something like this:

```
2018–01–06T09:33:09.397+0000 I CONTROL [initandlisten] ** WARNING: Access control is not enabled for the database.
2018–01–06T09:33:09.397+0000 I CONTROL [initandlisten] ** Read and write access to data and configuration is unrestricted.
```
We will now create a new MongoDB `admin` user to rectify the situation. If not already done, connect to your MongoDB again using the mongo command and after the > sign, add these queries (replace the user and pwd values with your own):

```
use admin
db.createUser({
  user: "mongo_user",
  pwd: "your_password",
  roles: [{ role: "dbAdminAnyDatabase", db: "admin" }]
})
```

This switches to the `admin` database and creates a new user with `dbAdminAnyDatabase` role therein. 



+ **Secure database access control on MongoDB**

To remove the aforementioned warning message, we will now modify the MongoDB configuration slightly. Edit the `mongod.conf` with this command:

```
sudo nano /etc/mongod.conf
```
Below the `#security` comment, add the following lines:
```
security:
  authorization: "enabled"
```
Then restart the MongoDB service:

`sudo service mongod restart`

Now your database is secured with `username` and `password` and the warning message should have disappeared upon your next connection to MongoDB. Try to connect to your database using the new user we created. Replace with your login credentials, but leave the quotation marks intact:
```
mongo -u "mongo_user" -p "your_password" --authenticationDatabase "admin"
```
![mongo](https://lh3.googleusercontent.com/5irbIyfANwZuRXRK9XDR3pq3P6u3YspGI548Z_QO4QvswwEb0l58u0OQ-FrY5pV_TwrRifxN6Hs95Tlj7nQAuOyxA-G2GAznAP6KboMIJNOGmXE5Awo5j3qryCf5BBcDUFGdkLddlyk6VCDk-kDndxFuPlTGV9-eOcK_BpZQuHo3s2s6-MBmiihAYNCDfguly02kWk-nqluibmbRgEUpe2KyKtwDjlyCfFm8wS3_hEcpM8tqgm9NvI7WrTYWgCroFGCtB3Th2HoiUwKww-NWs-0dLwpByXzFoJszrDyztUyQkI-09lHQEbbjRnM-cCpwxRT6VrpMzwkjwrfA7B4zuIK77EebLbBc1Az-vXDCGNJ1GWIXWzyd9AiiX3oxZdzCPwy4e9I1acdqxuk_CR-qmVodYx49ZSogdZ1xTn8cxXty92h9xC5_SXw_Tp4-cizYvoa8uPMM1shfRnioTnSyTg1MhvkrwNY8q2irxG-PaKImwdqVRvWifeGEiFiIWPHq3aXlljrsRSX09NVRgeNY4PcLe4ZhQu6yx0yyWygxqNWaEcW344gil9pxHCP51zXLkjVKfxRgOvbkwh7kArdhHuGjbv4Lx497qidc9ori7xRLM9lbVAtwnu7LTWU-f0VRzjvu17XZ0Sh3gG60s3a9WR_AAfSwl2-2=w747-h154-no)

### 21. Install the Postman Native App in Ubuntu 16.04
 Run command the following:
 
 ```
   wget https://dl.pstmn.io/download/latest/linux64 -O postman.tar.gz
   sudo tar -xzf postman.tar.gz -C /opt
   rm postman.tar.gz
   sudo ln -s /opt/Postman/Postman /usr/bin/postman
```

To start up the Postman app, you config more the following: 

```
cat > ~/.local/share/applications/postman.desktop <<EOL
[Desktop Entry]
Encoding=UTF-8
Name=Postman
Exec=postman
Icon=/opt/Postman/resources/app/assets/icon.png
Terminal=false
Type=Application
Categories=Development;
EOL

```

### 22. Install Private Server Of Gitlab

[Install here](https://github.com/flightstar/Installer-Package-In-Linux/blob/master/Install%20private%20server%20Gitlab%20on%20Ubuntu)

### 23. install latest gcc on Ubuntu LTS (12.04, 14.04, 16.04)

If you are still reading let's carry on with the code.
```
sudo apt-get update && \
sudo apt-get install build-essential software-properties-common -y && \
sudo add-apt-repository ppa:ubuntu-toolchain-r/test -y && \
sudo apt-get update && \
sudo apt-get install gcc-snapshot -y && \
sudo apt-get update && \
sudo apt-get install gcc-6 g++-6 -y && \
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-6 60 --slave /usr/bin/g++ g++ /usr/bin/g++-6 && \
sudo apt-get install gcc-4.8 g++-4.8 -y && \
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.8 60 --slave /usr/bin/g++ g++ /usr/bin/g++-4.8;
```

When completed, you must change to the gcc you want to work with by default. Type in your terminal:

`sudo update-alternatives --config gcc`

To verify if it worked. Just type in your terminal

`gcc -v`

If everything went fine you should see gcc 6.1.1

### 24. Install all software in Ubuntu by 1 click
+ Install Ubuntu After Install

```
sudo add-apt-repository ppa:thefanclub/ubuntu-after-install
sudo apt-get update
sudo apt-get install ubuntu-after-install
```

+ Remove Ubuntu After Install

```
sudo apt-get remove ubuntu-after-install
sudo add-apt-repository --remove ppa:thefanclub/ubuntu-after-install
```
+ List of software available:
  + Ubuntu Restricted Extras : Video codecs and Flash Plugin, video, listen to music mp3
  + libdvdcss : Activate DVD playback
  + Unity Tweak Tool : Help custom Ubuntu
  + Numix Circle Icons : Good icon for Ubuntu
  + Variety wallpaper changer : thay đổi wallpaper của Ubuntu
  + My Weather Indicator : hiển thị thời tiết trên thanh trạng thái
  + Google Chrome : 
  + Tor Browser : 
  + LibreOffice: Tools of office software Open source
  + Skype: Chat online
  + Pidgin : phần mềm chat tích hợp Yahoo, Facebook, Gtalk tất cả trong một.
  + Grive Tools : để đồng bộ với Google Drive, trình lưu trữ dữ liệu trực tuyến
  + DropBox : trình lưu trữ dữ liệu trực tuyến
  + VLC : trình nghe nhạc, xem video tất cả trong một.
  + KODI (XBMC)
  + Radio Tray : để streaming radio service trong Ubuntu
  + Spotify : trình nghe nhạc online
  + GIMP: Photoshop alternative
  + Darktable : để xử lý RAW files image
  + Inkscape : trình chỉnh sửa ảnh vector, tương tự Adobe Illustrator
  + Scribus : tương tự Adobe InDesigner để thiết kế ấn bản, sách báo xuất bản.
  + OpenShot : trình chỉnh sửa video
  + Kdenlive : chỉnh sửa video nâng cao
  + Handbrake : chuyển đổi định dạng video
  + Audacity : chỉnh sửa file âm thanh và nhạc
  + Steam : trình quản lý và chơi game trong Linux
  + KeePass trình quản lý password
  + Shutter : chụp hình nhanh màn hình
  + FileZilla  : trình đồng bộ file FTP
  + BleachBit : trình download torrent
  + Samba : dùng cho windows network sharing
  + PDF Tools : chỉnh sửa file PDF
  + p7zip : trình nén và giải nén file
  + Oracle Java 7

### 25. Install Android SDK:

```
sudo add-apt-repository ppa:webupd8team/java

sudo apt-get update

sudo apt-get install java-common oracle-java8-installer

sudo apt-get install oracle-java8-set-default

source /etc/profile

# create sdk folder
export ANDROID_HOME=/opt/android-sdk-linux
sudo mkdir -p $ANDROID_HOME

# download android sdk
cd $ANDROID_HOME
sudo wget https://dl.google.com/android/repository/tools_r25.2.3-linux.zip
sudo unzip tools_r25.2.3-linux.zip
cd tools

# install all sdk packages
sudo ./android update sdk --no-ui

# set path
export PATH=${PATH}:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$ANDROID_HOME/build-tools/25.0.2/
source /etc/profile

apt-get install android-tools-adb
```
--------------------------------
## Information author:
+ Author: Hau Trung Nguyen
+ Email: haunt.hcm2015@gmail.com
+ Skype: haunt.hcm2015



