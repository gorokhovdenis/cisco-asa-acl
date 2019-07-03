Automation configuring Cisco ASA devices
=========
```bash temp_access.sh``` for running

Requirements
------------
ansible
python3

Role Variables
--------------
Variables hosted in group_vars.


Example 
----------------
```
bash temp_access.sh 
enter action (add|del)
add
enter host (vld|M0|baz|perm|ufa|trubo|atz|vmz)
vld
enter ip
10.224.224.224
```

Example result
----------------
access-list inside extended permit ip host 10.224.224.224 any 