 ![](http://farm5.staticflickr.com/4162/34280075171_e80852fde0_b.jpg)

##### Use some command the following:
  ```
  sudo apt-get install curl openssh-server ca-certificates postfix
  curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | sudo bash
  sudo apt-get install gitlab-ce
  sudo gitlab-ctl reconfigure
  ```
 ##### After installed, you can use `gitlab-ctl` to manage service:
 
 + **Check status:**
      `sudo gitlab-ctl status`

 + **Turn on service:**
      `sudo gitlab-ctl start`

 + **Turn off service:**
      `sudo gitlab-ctl stop`

 + **Restart service:**
      `sudo gitlab-ctl restart`
      
 *Note:*
 
 + Gitlab Omnibus include lots of packages: Nginx, Postgresql, Redis, Sidekiq, Unicorn,... so size pretty weight.
 + If your servers are using Nginx make web server duplicate port, We can disable Nginx package in Gitlab Omnibus to use Nginx available:
 + Open file /etc/gitlab/gitlab.rb and fix the following config:
 ```
  nginx['enable'] = false
  web_server['external_users'] = ['www-data']
```
 + Update configuration of Gitlab:
 ```
  gitlab-ctl reconfigure
 ```
 
 ##### You can references more: https://about.gitlab.com/installation
