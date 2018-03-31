###### They are a group of softrware open source which was installed to build environment development web server:
+ ###### *Linux OS*
+ ###### *Apache* 
+ ###### *Mysql* 
+ ###### *PHP* 
##### Update Package: 
`sudo apt-get update`
##### Install Apache: 
`      sudo apt-get install apache2`
> Run browser to test: `http://localhost
![Result Apache](https://i.imgur.com/mIK2w6g.png)
###### Install PHP:
`           sudo apt-get install php libapache2-mod-php php-mcrypt`
+ ###### *To test compatibility between Apache and PHP, please use command:*
`           sudo service apache2 restart`
+ ###### *After that, please create a file test.php:* 
`           sudo gedit /var/www/html/test.php`
+ ###### *With content*: 
`           <?php
               phpinfo();`
+ ###### *Browser display result, PHP installed succesful*
![Result PHP](http://i.imgur.com/5j5qnYh.png)

##### Install module PHP:
+ ###### *Display list of module in PHP*:
`           sudo apt-cache search php-`
+ ###### *Install module in PHP, use command line*:
`           sudo apt-get install module-name`

##### Install Mysql:
`           sudo apt-get install mysql-server php-mysql`
> In installing process, enter password and confirm password for user root
##### Install PhpMyAdmin:
`           sudo apt-get install phpmyadmin`
> In installing process, system programm will ask us what's choose server?, You should choose server "Apache2"  and enter. After that, system will require set password for phpMyAdmin. You can reuse password of Mysql to easy remember. 
+ ###### *Open file /etc/apache2/apache2.conf and add a line code at end file:*

`           Include /etc/phpmyadmin/apache.conf`
+ ###### *After completely, restart apache by terminal*:
`           sudo service apache2 restart`
> Open browser and access address http://localhost/phpmyadmin, PhpmyAdmin require username and password then you can enter "root" for username and password installed at previous

+ ###### *Start Mysql: sudo service start mysql* 
+ ###### *Stop Mysql: sudo service stop mysql*
+ ###### *Restart Mysql: sudo service restart mysql*
+ ###### *Start Apache: sudo service apache2 start*
+ ###### *Stop Apache: sudo service apache2 stop*
+ ###### *Restart Apache: sudo service apache2 restart*

##### Change port Apache2:

+ Open terminal, run root mode: `sudo su` 
+ You can use vim or nano or whatever can open file config: `nano /etc/apache2/sites-available/000-default.conf`
+ change port 80 into a number from 1024 to 65535. 
> The number port references socket must unique on a computer, value from 0 to 65535 (16 bits). Therein, value of port:
> + 0 -> 1023: Be called common or well-known ports for the system process.
> + 1024 -> 49151: Be called registered port. In principle, the application use this port must register to IANA (Internet Assigned Numbers Authority)
> + 49152 -> 65535: Be called dynamic-private port. The user can use this number port which don't need register as above.  
+ Save file */000-default.conf and restart apache 

![Apache2 change port](https://lh3.googleusercontent.com/Ai_EIPJ15ofz6rpUz33HczjrpEfYHolo_r048I_2lY5JdMnB1VgScmh-2YQKvo7R9wyFYNMgX0TxdT2qmMBqywNtltQHEkezVoXFHHMZpT4P72bMvVVZ_tMhiU8SfDwPIlw4FKm4QaB-WwN2rS2-rE75Emgx-9RiQgDg_uCqvjiwGpbpY_nz5ACY41I3zCLgkmmlkKX1HgFXh8Kd2gbkHlAXd7WKDlOcJC-z3sJ7j97NTal9tdikKH5FQdqLw_8xbSUO0B3Oal2U-ZhG3mbm_sgwYESupVotr9doVNN1gK6ZRZJrR1mSl0t5ThTDD8nQP2PXbYc7oMueB4BjHp2nnfL5huAnRBELHhPt6kxzL_3te7R7jjHX2QMBqo3way51SYjZ32Ew0KQdhL50jC_pgtAMJMeCfVoxv_nOb442sfTpXdnrNbgkoXKH8w4mc5Va0hFC6LTO3eNDzIs2aXqih8_D5dLPYTsAzLmxvrnZyATAHZIiT9e_5-KZAKR68XbGPWqwLuxZOqAm-ZYYsmgFDcOZddWPkH_S1JleNj5atlLmhueUuNJ_YEhNJu2o2J8SNBY6GdsEANQnIDQU15FKci7dREGqHgz17hqH4BQQ73mS0-leBfqhdc49yiXxYNS5jZuaKa5kpWQ-KuF9s0iySgYfMZVJ1JAW=s639-no)



