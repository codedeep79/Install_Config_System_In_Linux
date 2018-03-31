
### 1. Introduce Minikube: .

> Minikute is tool help run Kubernetes on your local computer.

![Minikute image](https://lh3.googleusercontent.com/GYT9OUKDzXx8a9GiZNi7lG_goLZtOIdBeAqPXhSRyBl4CF2Pt3Xl7wYEfV4_f9WYBRn1bVani7LR1Fh50Z_kFZhDfGXD6alTHuJjT9dvj-Ka2WURyoRnSXjvdS1H7SysVP7CVBke5dbHMB4gtsTq-pEXuv0J_Q5Acn3n6MqrIGoXTS4UjX2Za4mbPOP2_7AmtwcRtSwGEnvNnPLf55brtBcDfj8AnxfZnIGAXDxxzNSrqGwWvjgD_ca3CVEwDTM1hqMSqlLwC9fmcsH8wMWT28zSS_5B_b_5r_XIGvQKjMS7MZHo6Gbnl50SNzKIQvwRv3XgMXgzcIEFS7PbWQ2uCK7vYU1M910uCnmUZPF9V5dNhRtf_s5YzOdcxjDRMo4boukBH0ILHwg3jm13tVv9ryErY_hqeJyzbOAxWphq_trKzeM1lNrLWqeij3tlt1lYPJmpPvw9SqIgUiQ7l09aTHvRPjUfOz7FCDqcTVxEOEgLWdlkGAVFWFDioPMB2t6n1LZSW0qBZZr_uRTsSquVWXTVZemtqsy9eebXWCrEw8Snlus7zZtrtJ4o0TMORH1qg030mgIGmBbQX5iSJG3HFrx4H5NjhWtD7UGHFkwPKDSz9ieih3elS08vkEbxnkgdTaWP_9nR0QAKHnVpbp1rw041LMJdbwx5=w638-h359-no)

##### They have provided some feature: 

+ ###### DNS
+ ###### NodePorts
+ ###### ConfigMaps and Secrets
+ ###### Dashboards
+ ###### Container Runtime: Docker, and rkt
+ ###### Enabling CNI (Container Network Interface)
+ ###### Ingress

### 2. Install Minikube:

> In this guide, i'm using Ubuntu 17.10 to run Minikube.

### Requirements:

+ #### Checking that our system supports ***VT-x/AMD-v virtualization*** by running this command: 

> `sudo su`

> `cat /proc/cpuinfo | grep 'vmx\|svm'`

![Checking that our system supports](https://lh3.googleusercontent.com/NnVzrO6yZ83g_sGKYC4tqdcN7rrPaHRVCsmy5RSYuOP_CpyKsumDTGk4zFefzVHGTT9F9gjrqkW398v5hoCXnTfckzL9m31goj6RVX0ukUD4OK4ejWsTjAals64Asi8kreas86qLZp9uTGHlPlRSF67WOJ0A0cRFOftGOrA4I8iRNi6ZbrWJRyJDUPAz6tKPQnXJlDFZwfLphUajVmLa-vKlnd_CY_GXwjZ6qbw65VTC05ZFd6MNh670WIj7NEnozKsV7K_NMjqE5vuIPrjX8lQZrfT7xBKQGj0CNKBse4P_SLXW_o8fvxc2nPWx-l4fnY7HGlz50T-zdFBHVKEgG_bcP9c5PmNihO5oZL0rlDCRQcpFHq6SliwwkuqA9j9UfN6zuWIjMgZNL4rCXhA-2O2e8KhkVVEYmWyyWz7u8YFcin6VZ6jpRV654hzpWelLuYF1zpRgR4NZ4syaTw5nq2jJvoD6bcjZW-W4Sa9QbqbmGpzyKxJ0WEL3LlG59xCJs_5tw5G6oo9YpowoQ6KYLChXaeXefw1iuHjj4-7LxP3c3NG8kRvoFr6MSSJaXyvPiNFXUw1Cs7fz2kLHHe3Y9bOL9usAa9brhZ3kfLn9IpiB9UMXI9FrSAhDDlYnNfnVL11ixhdWDEPKAN4sb-N7PKGxslAjaQqP=w1299-h470-no)

 ****if this command gives an output then it’s good.****

+ #### Continuous, installing recent VirtualBox or VMWare fusion. We will be used VirtualBox 5.2:

> `sudo apt-get update && sudo apt-get dist-upgrade && sudo apt-get autoremove`

> `sudo apt-get -y install gcc make linux-headers-$(uname -r) dkms`

> `wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -`

> `wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -`

> `sudo sh -c 'echo "deb http://download.virtualbox.org/virtualbox/debian $(lsb_release -sc) contrib" >> /etc/apt/sources.list'`

> `sudo apt-get update`

> `sudo apt-get install virtualbox-5.2`

****To verify if VirtualBox is installed, please run the commands: `VBoxManage -v`****

****Install VirtualBox Extension Pack: Everytime you install VirtualBox make sure to install the extension pack as well. The pack enables VRDP (Virtual Remote Desktop Protocol) and many other enhancements:****

> `curl -O http://download.virtualbox.org/virtualbox/5.2.0/Oracle_VM_VirtualBox_Extension_Pack-5.2.0-118431.vbox-extpack`

> `sudo VBoxManage extpack install Oracle_VM_VirtualBox_Extension_Pack-5.2.0-118431.vbox-extpack`

****Run the commands below to view the extension pack installed: `VBoxManage list extpacks`****

> The results should look like the one below:

![Run the commands below to view the extension pack installed](https://lh3.googleusercontent.com/33deez8gMRh0xd30gyDAbknNQyvVEgZ6HnF-1ruAyShpYEhermzWk94F5c0Eoa0Gywuz2WeesrSIDizzvpdvQjvWi_1MhgGOqFaGQf1RZvMedMYBhReUYqiRWXxW4pYQDXnQU4ahOYPr4qCNown5BfXiiH6kolD6fFO1C-SuexUfzs_-ztvqhLowOCVaD1BghQB91c_kDVvQbMSHJ9nJpsX_FeXgmy0pbMUGfSFr51kRSepmJqtse_LGPs9QGTHG4HUsZYT0Y5OIIRoJUe79OK7fiMNZ-xfGuFg5SI3k6HI9MvQlaondrHZWrjAzVKBJz25o8DIxV1TplGtHjC3YinjYBITnYv8N4CT5ggITBR7mbt4U-LcRMQpcaXUlk9noFYpBygcE6np95IgFZyIzR3_XPdgYDSpxXFKVQN0vtno_JQCdT715IA_jjbq8JefquyGAqUysdhOSZ8C4KTFwsMkSQ_aSu7ab4C4dhAjavwIkUwMdQ0zEphI5Kpal6zwPVCJfTKh5LVg9eBcgonrv9QhcvEc2suRn89SZHIcbLmI6moPvCRorx1V9RtF5K8JLTS1be2RFEAWLLbJnYjIFUxFAxDa307npuoabkF8A6tM7hLXTGI93A8_is-zzrz8jvR9andC2_2O6WHvrL2XaO1dxwJtsN9ca=w1079-h229-no)

+ #### Go on, installing kubectl:

> `curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl`

> `chmod +x ./kubectl`

> `sudo mv ./kubectl /usr/local/bin/kubectl`

+ #### Install Minikube:

> `curl -Lo minikube https://storage.googleapis.com/minikube/releases/v0.18.0/minikube-linux-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin/`

### 3. Deploy Minikube

+ #### Start local Kubernetes cluster:

****Use this command below:****

> `minikube start`

![Start local Kubernetes cluster](https://lh3.googleusercontent.com/6KeEbUnXE51kX1BarIPjKQnI4uPLktJg-E9lk2zjcHrVARlSgGNLu2TaLtt0FtnEkTMMcZaafXipSsMuO2HDC0WoDnTKzjb_apQl6i4BBov96xFqoL5LJGTprl0Qpxgrf3ClFETdOYj4WVrkep1g11_MUcHdQCPM9Ykr2qLCm-3HDirJXh22nd9KyLI4y_a85mgzLGd4Xz3zMrkfIaL6jxJvk8vmrxdLiplNJlakJKWgBsDod3kfAt0QZMNrbFwz9QYFaUhEQIS2eLoOMzhw-Nz8AEMN76q7aiOXp7jyenxiQZT2GivAFMOGcXg0SA15YSfSp7Lli9_YDdpasbztliqvjYncsuyE5pz2QA0pnRzAOGPfTiAbbM3Tdii5kSq09IfBpPMd9M-51LS5gp7eFyJiBIvcjcTauW9CmfCW57ck72fS2Hal1n7smagAZjPZnAqdvytzH__NB1s42hCg1bjTwy00AE6SsRRcgdD8-A8FlYJ4UUyD7fQUbnYvOyyoISiR6cenJdBCbU6R_bTrrbcW19bp5nI1oXjnNr7wUlq9NutKFh9WUL_rFIPM8eCJgNE-bE001JFJ2HRcyVtqABn__fAJzvNCJlGYoc711pfNlTEjSEwaVq0uroRZaU2t58Hr7m0D3fZXgehSROjRL67whx3CZZZQ=w623-h231-no)

****After running this code, environment of minikube setup finished and you can declare pods, services to run.****

+ #### To check nodes in cluster:

****Use this command below:****

> `kubectl get nodes`

![To check nodes in cluster](https://lh3.googleusercontent.com/Nv712Ea-B6a_o3jFxUkbHxjD52ho1Fjirzis5IKFlR2DnoGQzgbJowb1gsXcJAx24h7N4yU4H0urGHr2VQDO0Ix0w7K3ChhZGBwUGIu1XkFfOShGOkqb3mt4SCFvhF8-4P17GtZKjG2tRC5t3VUgihG1bdd3cyAJn5_U5D9-CvrawnzOxxcKnPmDtU005psmU9giU0Q09x5Z1WMgGdDbAQ7WtAqFnmtpF4B0vNX54MrzjJRNp1_rVqSVD0zmajjgG7JAXeNMCkHj3dTHXH_7xV1oKYUONmVuat4rsJntroZrzDyjSSoMxzCRBjKm-yy11GnjOmrsltM9FzzEZ2Mkvu9YYaGIXj-x91JJcJcQEvWuggjk7pHuMIQKLP_RLc6KPdM2q0CI_mXZHjLRD8InovGvb3CyDwd9HMnWCWteldsSX8G1NSaPdgJaG54Xiu2R-pySC8xS1pUbecRbCFAsTf8V-TP9t9IxwY8eOG_imz7ZyoLVuhKXGlVWfxxnggPSH2FROW-0XTGLPp_E0l-7r9YHjo3w6yzqD0DwVQThwMy-sXvXdR6dsgp6TGjpuxnJcnLN5T8wx7x1JFgpZi7a9Ac0yOyZv0z8FKQn6Omc2RGwaCnTelxYc2kfndt_Ybe8i9gev-rZU7B8VGFeMUvazmhqpEDUSV5d=w612-h112-no)

+ #### To check pods in running:

****Use this command below:****

> `kubectl get pods --all-namespaces`

![To check pods in running](https://lh3.googleusercontent.com/GCB8xp_MGdms3ID1zyVSs80m8D05pNFOTWYZ0mAPM9HygFYi-nzZZ6u1JhDOo8II9edWGIIExJlzZ0kB4hRUoM7KrcyWlSWev3EBrFVxPDH_DSfeAE98h0UGnoAmxBC2My1jTZlaV5iAoWmfAxg4urHu4eYn4lvQR2nsJrvdNrxuq_aQEcEHOOZbSMErua8RPujFilDV_pCl-oD3c-K5exP0kBdsQ-_Jvir6vFZRN1NiqPGxckF2-4fv9fNquLih4l4nm8wigTIKubW7jtD_ESzia70myQTKA7oI2R_JvnKqMMoLX1hRz46wXCj55RXB407pOT4YCcHvlebshEqvZq3sN4p8qDFKpWdPLbgb2Q0wjxMvrvURVqHYen00JcPlzaTVEQsDZssbmEQVeMJt-UP8LNHCjepImNUJMRWqmIcQ3TZmJhA_mAlORuJP0QZb_XmLNtlOIYq-S4DVb1vIGUdGGIhTgZMU40J_ytgZzaVIQbB94U-eeXWsBN52SlYpuLp2TrGyFHw0yU4osjX9eXnmiLfCO8UFW4jz_xnRB0aJU-_S0L2hXMvqg8CFGG-Bc6dOzI2sMJNlB9ZWAOSdJhFuDrhuVrqoBkQjBnNkwxrjKEf1aehjZiXn3IvDLxCljKaIErdxAarPUVgGA3JA5vN_WMb5_aC5=w783-h135-no)

****Default kubernetes create and run this pods:****

+ #### Display services are running:

****Use this command below:****

> `kubectl get svc --all-namespaces`

![Display services are running](https://lh3.googleusercontent.com/mTPdinXzmjEgWDUh75pDA7IUQZorjSNq0xrxO6LSq3X4meiqN4mr6hnjhtlZCXHqEM_emzeovVzWWToKhxBwziuTTEr16BLqlsqymg0xq6Y8rWEq3jSxEHBQzS2X_WpMYz0gYwi1GRlUgoc1MEx_5P3hyk0OVyPyDo3ol0HEWf32qloFPlGXneXNFiMvlluQ2LQkoPHV9XiaUosL9Vz8gI_J7rp6u258I_BkX2PIrKVCwU_HeJ63UR09PcUgu2A4Me7iR_JSnz9BGno2UYf-JsUlVl6N7bjqadhcGFGe43TuKkLZ5tpJmgSJ-zHBuowVvGa-lymhJTlPGEOg9cICSpiy5nLBNlRdv_DWjvnUr8JYPBkiHu5l1ZE_SfmjmQFgWmI7YzN0wTplJFqL14KIhCthgaQj9WoiBgAh3yMdEPoMLghJlTsGBaJ6zrQ75ORtQ8KILTE2Hm8yDeOGeHXFnVVECvznNu_7PJhWik3Jj9nHvruL9gxSD41ZDhJbjEFM7QAPVvhpABrS5hLjIU-IUTBhaZO7KVhWmW67fafo69VtTByzMbHX3npKlYrM71lOK3XeTyP-_E4TO1jildrw79YL_9ewyn_N4CzOXgSY4fgzaelKEYduEcNt2Z4enI6ghaZos9ztEvYMrlAbRiWOFh6iqDPaG7mY=w925-h140-no)

+ #### Minikube has provided dashboard allow us see, create, update pods, services.  To run dashboard, you can use code:

> `minikube dashboard`

****After that, access to address: http://IP:30000 to go into dashboard. Therein , IP address is value get from code:****

> `minikube ip`

![Minikube has provided dashboard](https://lh3.googleusercontent.com/-00UEOOuRG-zNSHd3ArcA4xpNpqH0YR_0tnJwyCU9jkq6lvn4FhuswdmgISM4tOkkXop1p0WHafEfvDbc3dfOF3B81PFMUJEX_7s51dDWx85RBqQdG4Zc8asz36I__8HFgm-daJ0d7ZW9cJ0IehZJ01vusJyWhEmtDfGzGVIF3jsiXTkI_qGwrCWNL8cIw95gNuS3tgEESZeA0R9Pd8Dg3YBpDzzXp5-bM9Px3Rjaj_jZmWHE-hzyUCmAjtGz-J_BXSo4sgM_R1XRynKlC4r7JusxTOgKiI_uSqoM9zrj8dXRtjiX1dF_7gGphQUqvSMoM206WLVhRdiWNVatAdKNEqXPWE5RDG7hblWpIeWhPuG78IhkDeF82sNqvj3m8dfwALixutSF72ysso3j0rkbt5qFqPP3YFSb2m13-D_gbfVTGm-A8gR_Hg0gHDqERDAEiT6PMdbSkDKPP5B218SFc3xn3pEticJNnVP0Ae8VrfXP9zHyE4LbZDHYfeLgtAfLeiIyfBgyOB5fpRbpJPwE2403LReob7RvlRTC4cGXPWMS4GcnQpPE2x5UjKy50qAbNmDF-XjTHQEypY6jaRagsnvSZpmgjAT8lpMi-jwOvkqQucW4kaZ_jg4v5PJ9nrmCknXYgC7ktJFnrs2P6gBDK1kuex7fV8h=w1149-h639-no)

+ #### Stop minikube:

![Stop minikube](https://lh3.googleusercontent.com/YT8q2VMIUSNrE4RQ_RBTm4PssyXSUGWfFUGBYTAaTZhCETGBzmXOwhBx2mNES-Ej5dbu-tk0cWvtx0xEu4v8kyvL8bFoUtejYNCJ81jtqNK7qtvKKhsQWUNC660H6eHo0A3LGpbPZGsWksX2uuw6pWnm7goecDwmmW0xhw8aA1VEx9Rstoeny337GL0rE6IlqJ11hpAJNXUZbBdtTfxwzvUczBL2xgbtHfJALlghv1B3b26CIPmzV3rAQvDSDA5UYDmc5s7rxt2OrS1DbW7S01P9dTtWF-DH5nfxJu0-LY21icP-f2Edvp10DFozcm3YgH582_fjUh7MPPIfEcrP6F1jBvdPDAVqdsO_ff9V8yjyD1AbOCIP7rb3yLP9nzEne0G3iNzg0Hvd93lkfNAprAfniUEJREXN1aMIcTVJ0_WjKirUqkWaqJvvlrEY18GUsw2H6u0_wg3Y0tzLSA4pchggaoQbjotkDlZkyrwwKqZpFzTppg7O5QtC3LHV1ORnATCSHeZ8bA7qxh_VSS7YlEUSdRl_1_szXud8PiyBFO4vjc5wzMJKk5y9aI7qydm6uI6c1m4MOMCzWodMxICKb83qJwtE6e_5hkAMNHkI4iPsuL6tTnl3CRtoYCSkxb2R0SbR57LnP9sy8YE7y4XPntM7NVo39JrE=w585-h104-no)

### 3. Try doing demo deploy nginx application: 
#### 3.1. Create a deployment with name is nginx from image nginx. Right now, 1 pod name is nginx-xxxx created.

****Use this command below:****

> `kubectl run nginx --image=nginx --port=80`

> `kubectl get deployments`

> `kubectl get pods`

![Create a deployment wuth name is nginx from image nginx. Right now, 1 pod name is nginx-xxxx created.](https://lh3.googleusercontent.com/jHmkPXJ71tHyowt_NrCGxUx9cYFxQvahnjiCYvHe7KEW2E8kbl6UHv1JBaqaC2Y-LqjXMp4TB566IE1KNTwJUau6vr7ooHW6hJ0t7Jg_w8EPC6yUO-ocscrJxq4yKJ-qQtCO9FU8Cz_cBv4xxf2UALI6oztYzbNgkG_3o3Tp5vYE2dvlsDOCGBzCLzXFsDdjIkAmKnvcfthv26VwqD9j67LbRZYpDFLRyj-u_STMzzfDT-UncRbFviBJM_U6fnzfuUMGZ4e2OsCd2jMClO2ko9zJbT-SOYmSpA2rms3F6XdKr_ehndNe_Q_PWzBB5yCOsaQI_lgZlWwgIUK0g4kLn4lh6Zj3nzh9ujf3oAFX0qs-gdRLAWaAwzyypBlGt-8RIeOsvKVDYgkwZi9go70Ml9Lw2djD2yiAW6wkV4tzr9f_GePWL9mErL92lajKbIP5D5-hqt5SvPLJwXzHECHv0OCX4evFNhFBZfLicLd2sfX_9QFQHqrni_hhOXf7t7Jtj7coDKkb8-SrCeamNyeSZQPk8-Vc-Dxa_M9sJIi1mlkv2EGTgIwR_5n62cKYZCG1ZOSmls8Q9zs9lqxdmOMXDAlrbNWEO_1HTsmLbcTGcEOx51Rvj9IadbkSOZsFj5bMYg3Hdo2UoIn6C_6RnYyHN6ZPXqmUZ7qC=w827-h165-no)

#### 3.2. Expose the deployment to an external IP address

****Use this command below:****

> `kubectl expose deployment nginx --type=NodePort`

![Expose the deployment to an external IP address](https://lh3.googleusercontent.com/GV7OJfzs9h3R3CMZO2XrD751INAzhno6CUc0hB0thQ0TvBqpHlPvbJn2ol4Phomg3Z6DWVK-jE0Sd6oWHsMLFszpdU8rRD1zFco5TywY9WeuJC1nRl5qrkj2fl8UAdSYzuLbYQaou7xtVKtUgi2t3YkDgMJC1Zjx6xMCsKUFQvCg8FkaAPOjtNtHxFkFMn-Q1Pwb8UFHzR9TV8fMwHxxEteoUUDzf729ISdqqKJbAbb7wWU0-4jRVQxKoccyXXmtw-ofbIPS0P-Ofzt9h8i1KC6aPlrNoKQirFBeQ1tBsBJ8oMGz4QWM6-TT03N6RZC1Sn1GSFmg23KE7hghNtbDRe1VkzET0KujD8jtJAwAr9FiIlSMT4322-gMGqVDdseELdd8PAMK9q4CxMjMG8X_8Fcj5vrSM10ni1w63iZZKkZTxRDaIAsxKdH9UltsYCNAAyVPbpXLWknE-3cD9kWcejkoit-7XDVkrSHRVRsJMnChgKKf7o-Fvz_vgDT8RPOC84WfQ3C3f_aRXRIp2f3vBd_6a06TR-Q2mtfrK8Ymf633KpT5aWFJLiQ2aOfaOyPGQsTrARY2anb4DHT3rP-bu8LmApSN5GzFGAH3Yk01vhMkmDsWXPCdOWSJ4ZWbvMcoZ-meMpwvyfDNKJ-kdNV_4gKK-0tfxDLa=w894-h70-no)

****Options NodePorts will listen to port on this node.****

****Use this command below:****

> `kubectl get svc`

![Options NodePorts will listen port on this node](https://lh3.googleusercontent.com/aaQbNoueen612A7QG_w5RdWfRKVw3LEdkDmp_WzBlZ0Mj6O9s0zk7ErzFAFpjw2ta80a4-QU7m358jr3UwRRQjT6eaUeOoHcrQjGZCTXxMbGeq_JMVKcIl0Aqrba6CGkiAPo0P8pfdz8Owi2e13-e9j_75eXOBcLdUS5sNCglJ-Yme_sQN3F1OB-pIDlkhCnlNQGuJEpPMNXO78-phfPZ1iMNVEBxjQg1lZmm9MaIVGsRFW2AmRQawHXPq9G_FGjC5oFPohCr3bHQBDAiEnk4OPCbt1o0OUJtRtTa4tpBVlCigWXQ-cwzjuoC40CJNtq6TKoxUo8eh5IJlgx2isGMFiIIQt9rYPkdkS2syeIXUBcuE9iQdkpeD7cNFjsg1i4ET4L3qOf1dze2j_pc3oDkBgSL2sDuHgPqLYpdJRZrQl-L0t71OWxmiPSdLZ6WR6leGJCJj9tl52MTNIjvceSV12T_oZmFnew9I3_LhkvAHKtz4uPJNVpyWq_PTxDqN-0CpPuUaG1tNOftm28LujudhkoQuOhpCMt2OOY_7S72gDsu-KPTge1ShM-W0luP8SO9UI27lJ-8_HMpaDEYlTc-9DULomVbWX2UEVOkDAB-yc0m2q_7q7FQGmTQ9EXF5VrxcJHs6FdxrSqGUl_RuOoeOviOtf-_omm=w722-h95-no)

#### 3.3. Test to service nginx

****Use this command below:****

> `root@admin123-B250M-Gaming-3:/home/admin123# minikube service nginx --url
http://192.168.99.100:30094`

> `curl http://192.168.99.100:30094`

![Test to service nginx](https://lh3.googleusercontent.com/ypOYHe5Awk55M231nlRnu_ccOIdup35vffC-_JhM8yaADmuXRM840u8NKoveXHHXMowugKzv1nI6PKTxwBOsZWI2T_wkKU1WSQmaL3VbtoPV8lb0vwbjqMEDRx8x1UBsfjrhjeduJQBtGMoEghOsnbeb0Xewthee-dhoGEVcAiAaXBhgsy7yQiF3tx_aVPBg6OM2-o87856en23DBRP-v6Hyuv_5ktKFVdukHwrm2xyNwHBzErh0Jk2J1gDf9asBdP2g7ZTxOomcMK5AFi_c5a5sHdyf3NejVb0IE8E8UyLB8Mk7RAm0iRjxDAfvAPIShj0OYQYAPDaZNLCk1W9RsJGf9UGRHTgEwW54__aD-map10jPpCmwK8JffkIBi_URKmAgx3TWT9HBttV-Y7oa2pnIt3uMSfbvWpapodGn8aIpL2Xu0omSEyLCiK2xh6_VavogAw2MzD6nlox0C3P-qHqmV9tjWT330t91DGdI5zRiaPfvmrvOUSSrNgpRLeWed31KvPHT1jbkFo9fIE8xAOZ7VXmikdptr-SU6yFwMlEcPKhoVQ-0tO0MhPPkYn0rkXy0lIj2WaP89grQVGoC7IU-t9F80wdmdCQhZCr1-VUd8I_j1nY8Xxw8i0RhlyMCEQxvfvF0wv3Mza7Svn9tl41EfVDuqa1v=w874-h532-no)

![Test to service nginx](https://lh3.googleusercontent.com/FZbTwLutZwq0pwpMzMgm2CSg2oITzaC0PjCa5TNJ7thzxFHfBTDHZWTEISFETZTRgo7XugvuXvoOuGNjIgxGULlfCdO8tTPbbNGOKLT0Tl-R2A_SlAFb6LDFxk7ZTwNBKtz_rz3cRvFbWMMN046alZ9gKmrIaF3eS_yfmhjqLCof8kp7zzQAM5Hu23qUcWbP8OEunTmKVsonakkMGK3eHGpuuEnnM3rRLnIqEzOtAfVHoZ4kjSva3sadsfSb3OX2_pKSLZ93UJ_j80ihPXf0p__vivp4YJnLQCgZc6JPnxGYAAut2vlqjrxnC1wzjdAOcnWhOVrnxgSVxw8qJOYZ4WQTs2uc_l_vwQYynsDw0xbh6CM61ianQ2TkNYd_xH3bTXLL8b9_w8ITCkrCoSIONBxj8KIIjT8xQs1hlcRQhPJD_-DIJA3CH90_H5KwPZU9pQ0duxfT-RxM7wmNWRRecuZqyOpOWduJWqVM3UVVNUk06114ta-qBSLr-o_YaspT8jXrPKTz-jtZt3B6moDbZKcTkV6lNUr_qXvXZjGAks6AVD7Rdh2zekkWaCyLj4KxJ7aVM877J3Ju1QmfX-qCK0unxmBvt38jhGJgEf5FEr6MFVdhOlGKv_57YxQHfOv-K7BwaHYzemv3Ji3j6zTuo3m8xbcsLh6a=w743-h360-no)

