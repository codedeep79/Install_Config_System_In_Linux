#         Install NGINX, PHP 7, MySQL Server (LEMP) and phpMyAdmin on Ubuntu

### 1. Update package
`sudo apt-get update`
### 2. Install Nginx
> Before installing the Nginx server, make sure that there is no other web server like Apache installed on the VPS. If have them,  you should delete all them in order command line:
+ `sudo systemctl stop apache2`
+ `sudo apt-get remove --purge apache2`
 
> And now, run the following command line to install Nginx: 
+ `sudo apt-get install nginx`

> Start Nginx by the following command line:
+ `systemctl start nginx`
+ `systemctl enable nginx`

> Check status of Nginx when working:
+ `systemctl status nginx`

> After installed, you can access PC's IP or http://localhost[:port_number] to watch result:

![Result installed Nginx](https://lh3.googleusercontent.com/tCHEa7jNR9NlXSbaCnoTxBLjL2F2dirE3dHNn98mSb8F5vFTc3IauQKmoWG7_KZc1f_2DGbvwlKyAaNWArWYsXpnyChLHvD9qNVjKMex21ogvKorQEyPKGF5ZiVtb_HMiPvK5WXowIWgk6R7cW05yQDrvKYj3gV8Jmb03YHCgzwhGuPNLV-xO0ilF350OhmEtrnXRI_KVFWwqHdKjV2gOfGIQjQGh-uSRZ2pjTnGHTFffIF_HaPJ5YFNbj7SMZjgtEDe76qspgBbtsGLw7BagzaXDo74sKhzFV7KMBps8dwyRiXvrY45bUwJ1p7vlC_K9gbpgYuL4twPe2Uy9cKkHkkkmE7KyTxH-yp_Wahsvu4t6M0-NkCvqrhfvYB9XGh3223IVY7e1ZVTOswSIGeoTF_FcNNzqnWpW1s7XyZmRaoOS97C9Q36ZWarUVjD4OlrT4Uc7xeTtTqZG7851u2FgBJqetC3m0yLSpQlaZAGMWbGKN5mEqYoR05bIC4rQjzYa0biHVHAytEiNztanbhuOoOU2i8xD9gL8BOLqYC9EhHrCoCjaDmsbmsXZJtSl2EZY2W67Or5112tY8wR6SW-4IcaSWKq5NftzxZfFr1KCLuFvo-iipaUe0rDo2Dh8sQP0fwA0eZMzpvzcHP7QPPOiKtVUbmXwm0B=w715-h267-no)

### 3. Install PHP-FPM
> Install some necessary PHP package:
+ `apt-get install php-fpm php-mysql`
> Once the installation is completed, edit the PHP configuration file and modify the **cgi.fix_pathinfo** parameter value from 1 to 0.

> To find the location of the php.ini file run the following command:
+ `php --ini |grep Loaded`

![Find location](https://lh3.googleusercontent.com/wb_mCBgicqEKjEAmeJWcIu4sD-RFwbTo1RqEbEUoNaDAamQfiAu49sBrzlVaDFgrTD79A-TnxDcqpcLFoS_dvjb0L7lEKWBMA-Nw2YecFjye90Zn31-dTyoMBBbCyjR6bl7ZUWEwFQdqinkMhiGkoXpAG9R9PXgKzp7YTKjf1FqxhrIpDDp_q9PMs05Xr7lEbGbDGZfpqLET3D9W8QF3urrpX3vhFIOIIPnsInRxxwIxKoqTgyxP05sgcW6imIzUp_40iT1jTRC4USJVhkSTVLbx7VOPPXnkuxEWlKJQLyVzAEFSfDW7l7DrqxsUCsrP8twwkHhW9IA41OcmoogVDTAQEtQuGxF918I-rFkZSKTb57pNczqtkiUjM4eg1CjJGxJnbcdAW__fCyaoGC4cfykCS2sfrpUubTQd7gxTiZn_D9Z0nuLdDhfpvePwtSfwtEwa8m9yXJ1wdJDAH6SdeXQx8i4U7p6KfY34xNXIK2v76kkmX9yVA6y9FFUECzUDjlMw2OItErGkWvV1uKz341zE7HYUzNUXbXwBQZkzOEl_y8yMUnd3rNIDUZxxeY_DAdhO506v5BE9iBG5WtanYSio8HNgUj0fePwFNRR0lu4bJ6nWMyn_OzyMXaQU0gTfNVuymbqaFaegFWkbGbHa02JNvbHcfQT6=w545-h54-no)

> Edit the /etc/php/7.1/cli/php.ini file and make the changes:
+ `vim /etc/php/7.1/cli/php.ini`
+ `cgi.fix_pathinfo=0`

> Save changes and restart PHP-FPM:
+ `sudo systemctl restart  php7.1-fpm`

> Configure Nginx Web Server: 

> Next step is to configure Nginx to use PHP. We will modify the default Nginx server block and add/uncomment the location ~\.php$ block:

`sudo nano /etc/nginx/sites-available/default`

![block and add/uncomment the location ~\.php$ ](https://lh3.googleusercontent.com/GtxfLCsxg5vwx05CYlrv6DasKIJQgQWFVN29faJYEbzMrNbf8W4hrjmz1-q1UniW1S-eqYG52EdQ4XjxAi_d04K2f3WyRBPIsks5UWqlklZxVdTIbmSNvZBAc0vJAEcYrwmYc5_5Z6eOF0gsV367ZSQubue1q2vXg75BVgYy7JbLAWOzS-keVXf3d7nv8la2XyTKL-tFIZd-yKnpt-nGOJ-16R_LUwNQVVZY-lrsRKy6iEySoHMlmsBzNzzvibPM1JbJcEeCexBcJCMtOsy348rdmyQhxOfZDfh8J-HfK9R3S3jX_kgbgIvXOV-D7TTSo65RxxSh4ooKwLFdHSN9mmEeXXqhzBWBccW6gwcbjTQZYPyBJ1zVYIdjew3Nt0tLOw4bTqciSvjZ8owkwRQ1DmdC6yLKsnd9Ll11WyKAREwPUbib1ixaSE18QH4hHUUafRyj8pnt_4pf79CmWiLWbkII7PDB_s43K-wAcfGqbuiNoCGGqI_UroyRc6PsXSBWtNgDWlrlZuqTpDvDj-WwyZxnf5lbDDm4pBIBvHgGIfCjkBnfBvyFiwxvFmmw2eNr3QETcz57aBSLdcSKazhkL-GWjPptBxHLNzHNwb76vq21rHnMUC_6khWa4f-Lcdu0wJRAhlPqLzIIdaNYIvrLYZbGtKUwa40u=w678-h362-no)

> Save the changes and test the new configuration:

![Save the changes and test the new configuration](https://lh3.googleusercontent.com/mTMMZYfqc97u7HVdMUzeC99l55WindcM4WIUitVgheV4nEvgWmnf0A2quEvAtd9Yqi5RuNLJJUVEp4603ItO-Bpi9MTRMlKXm-D1d9WZH4zWLv9sZYcLdOGfJm-ZlZUBFSll-K0n890aYsVBcd4wWgc7Csn5Hhtm6WWkWA-W-fx5WO7MTcW-1v5KpZPVedM96ZOaXUcN2Gl7ZzWBBB_sg3pwIpqNS1plh97VrMg1dBNF5bbN9IBLgzdMZxibU40FUvBeBoBSY9ToflSxTgrc4_TAcucFQLWK_cwLvVwVZK_rFM8EZ9Wrcb2XcbMDyt-uoM161Ki8ghL4LquaUOSUNvlh0atdGacDZ-k1QOvAOWmdG4SNYe28ki0c8PYjFxyviSWUFA26R3DW0o28p8TDSKQAa2GWajPq7AKDjX5RHYp5GbUqTd0WfP8fyLHirpgT4eW_VPQuXvdAuzgAdzuLcGzhvGMPgGye0NaJkpl-swU-gs_rfd9e7EeGwmGOaRpS3RUxHENAbi44NKI_NOAyD03BPZx7AqqjZ2AuUQc7srwQfdOXMkwbAqNNFU6qRx7LJ-6mMGAtN6ZY6BqwAwWZ54wabx7Gwj8h6GGUaMc3Z0tgI7dGeZ-LMC_f735DdOQRb1dslhx4FuLycAvkM0LMZEl1rfOvkFl1=w707-h115-no)

> Restart Nginx Web Server

+ `systemctl restart nginx`


> Start Nginx Web Server

+ `systemctl start nginx`

> Stop Nginx Web Server

+ `systemctl stop nginx`

### 4. Install Mysql Worchbench
+ `sudo apt update && sudo apt upgrade`
+ `sudo apt install mysql-workbench`
+  Run Mysql Worchbench: `mysql-workbench`
+  View more launch options from the command line interface, use the --help option: `/usr/bin/mysql-workbench --help`
### 5. Load a Sample Database into MySQL Server
> Download the ![sample Sakila database](http://downloads.mysql.com/docs/sakila-db.tar.gz) provided in the MySQL documentation:
+ `wget http://downloads.mysql.com/docs/sakila-db.tar.gz`

> Decompress the `tar.gz` file:
+ `tar -xzvf sakila-db.tar.gz`

> Open MySQL Workbench on your local machine and click `+` to create a new connection:

![MySQL Workbench on your local machine](https://lh3.googleusercontent.com/ezuChCdVnWluym6nf3KdSgCqDbnO_y3m36CtMhOuIGK2Zg7LWmypV1-nNrHODarnamjYNthyZSrAgDDg2iGyVpeTa8T2pFzE6NcvYpf42roDBEGeuGfPONlu3GuGDQ0ZM6BQE7TYyvR3YREj_ZwfqAvJPpzReJwF-s3Et4J5yZWSqHt6liCQ9lIcEJvvC3qmH7NO5cm1u13kmaGPNb7eKIUOv_TV34AREoACOw8M5imCCF9ATkCufsS62jJ1YOwQpSSSLDSgArT-9W-rKFNnBEIHu1AFHvoS-VY5Hq2GeboCc7sX6oePuACR7W3pzGkH45rVhI3QluzoF9mQA4hAuOYF11PDZ5qRnZ9-H7Qsbo2-xN5JDd6Pgx_Eq2VVqKMV_Q-LNJ_ElSo9yX7YJkQZjes6_XwEc-albTioLaSHyqPLH8PPELugJPrwuV0kJ45TBnU41gU7ndRd_GUvLkfqOcZLkCKxIRx4FONR2dFtj0PggJZ5DkX2gX2zi-nLBIKIXV-_ZRfK49-6U1JPX1s1fF3dZYWHdHxUUaMSUUimbBObXCZT0FkD-rSRWOGuXteTGF0A62wwu8yAb50wqeH2J__1ri3hpLJ0m34NEx_NCuBXcY1FK_bTAjFEaryVDV_XLdSI47Svtsivjh7npAXP4R8fl-rsgK_6=w802-h639-no)

> Enter "connection name (option)", "host name: 127.0.0.1", "password (password after installed mysql )" and test connect.

> Under **File**, select **Run SQL Script**…. Select **sakila-schema.sql** then click Run:

![Run SQL Script](https://lh3.googleusercontent.com/i5ley5wmM_npIR-KuODcuFdSSNMrSgmmmRbfDnAGMvKK4dPhd4iQbtoul1NeYJDfQuyG11FNzZBhYG_0AjB5ohIEL8T46ffkiWCATJmqRIoZFUHMDe6N1_7f0ZVn86I_livQ0cBQrA267T_Nbw6u-4mEXDD-ZWMIhVCoCNa0iUqdPXmzd32ZACy-63gCuOsQvIcYwrLW5yXi6zIwYKUjqCUtAkvrHMaU0rEYAIG68ZWgKkn-JFCBxWmgia7MMrP-XJrnfMwmJyI94Uh5r2Cpyvr2Js3wyYrzEJ6GyWFkkuzmstxByCZu64VcrSb5f1rebhZsaYoBZPgP22JHQFJ2EFbV1jhBNdRyRgFHhWIFPfJUUe_HPXmL1tbp3tXRNkf17gEi4ZnL2Go73FlvjX6YvAlLy1a3adE2a3DIwpJbj_1hwcrLIY9VhU-q1lr_Wl0cgcHnWVOV-cz6S2z3cmjTbgKxsTLPSLK5o_rduNEibM6g-mbIkOhrG2_6IRSx0If5U_eHbHBcv_lE9Cuz7WcbvIBBuUhk41Yhvt9vgV1ln6LgirSdxJgbjSpNly7qh1nROTbBNMF9ZucadwDy2no8pQUQwkmxRfxVM-PxUOSdHMYGWkxbSCoygi8gnb3GvT87hUPBsi0lus_UdFESLhNRLQTqMfFkBy6O=w903-h639-no)

> Repeat step above for **sakila-data.sql**.

> Under the *Query1* tab, use the sample query below to see a **Result Grid** of selected data:

![Result Grid](https://lh3.googleusercontent.com/RhJGvUSgJnGwUf7dFTQ_d9G3XL97ve3CU8TWQI9u6eSnx4M7tF9lfmm9AmoWoge250Jxl43iXcMheAnA2gtcyefpErs75jnbWJgrO1U0HAcREk8Bt0aWY96WlDpsI6SkUp_df7w8gsc8KV_uOdxxwALkEap2JJdRyK6v6JSwoKWSfDWw1WJlWEkUhOM-TszrYDcTV6WvmYpqSqwxJOMeoL-l4IfucQzqr11eWobvsTtvz9DyjR8Shl1psDzbnd4fWX0wiTs5C2IxnbQNgJdOJu0Wjov5Vp3f2g7NzN2pTJFnCM4z1ldSB1VOc5QS4VoC0_RW5e6lh9xMZ0EUcAC1cArR8aYsWy0P4-YOCiouzJ4N9CXyXezas2YFvSgZlD4JaxLyh24FqdZReVDYvi64_29JEftfwOx04sjX8y0qxLnW5cl7-xIqwP5ek-MyUkyjXME9U7KcSl73D-un9dejSuU65qfntqsjrjGRyPVLHB62Klcu6ez9qiPx6G1a2lilEJY_U04vzcB6IMy2xJKSn-NAD45kY3UBJ0QHGBtRZmPs-rsDiW9kYwoGT9RwZ2Vyx0CSDx09u3NQSV_ALTWR120qC48mXuhpHoJl6DUaGu0ThV-oZQA7z1oqe2_j5Vm9vReGwv1bhXKTdGCF9KsAL57HEjfG5U3D=w1299-h566-no)

### 6. Uninstall Nginx
+ `apt-get --purge autoremove nginx-* `
+ `rm -rf /var/lib/nginx /etc/nginx`
