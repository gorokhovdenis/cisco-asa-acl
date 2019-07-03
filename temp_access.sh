#!/bin/sh
echo enter action "(add|del)"
read act
echo enter host "(vld|M0|baz|perm|ufa|trubo|atz|vmz)"
read host
echo enter ip
read ip
if [[ "$act" =~ ^(del|add|Add|Del)+$ ]] && [[ "$host" =~ ^(vld|M0|baz|perm|ufa|trubo|atz|vmz)+$ ]] && [[ "$ip" =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]
then
    ansible-playbook roles/temp_access.yml -i hosts_asa --vault-password-file ./.asa_pass --extra-vars '{"host":'"$host"',"ip":'"$ip"',"action":'"$act"'}'
else
    echo error input parametr
fi