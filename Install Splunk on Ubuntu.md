### Step 1: You must have a account of [splunk](https://www.splunk.com/). 
If don't have account, you should register a account at [here](https://www.splunk.com/en_us/download.html)
### Step 2: Download a Splunk Enterprise 7.0.2 at [here](https://www.splunk.com/en_us/download/splunk-enterprise.html#tabs/linux)
At here, i choosed download splunk-7.0.2-xxxx.tgz 
### Step 3: Extract file splunk-7.0.2-xxx.tgz
```
cd Downloads
sudo tar -xzvf splunk-7.0.2-03bbabbd5c0f-Linux-x86_64.tgz -C /opt/  
```

### Step 4: Install it

```
cd /opt/
cd splunk/bin 
sudo ./splunk start --accept-license 
sudo ./splunk enable boot-start 
```

### Step 5: Test active:
`curl http://localhost:8000`

Or run on browser:
`http://localhost:8000`

