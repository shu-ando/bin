#!/usr/bin/env bash
case "$#" in
	"2" ) port=22 ;;
	"3" ) port=$3 ;;
	* ) printf "Usage: sshkeyput.sh user host [port]\n" ; exit 1 ;;
esac
ssh-keygen -C $USER@$HOSTNAME -f $HOME/.ssh/id_rsa -N ""
scp -P $port $1@$2:/home/$1/.ssh/authorized_keys ./
mv authorized_keys temp_authorized_keys;
cat $HOME/.ssh/id_rsa.pub >>temp_authorized_keys
sort -u temp_authorized_keys >authorized_keys
scp -P $port authorized_keys $1@$2:/home/$1/.ssh/
rm authorized_keys temp_authorized_keys

