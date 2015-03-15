#!/usr/bin/env bash
case "$#" in
	"2" ) port=22 ;;
	"3" ) port=$3 ;;
	* ) printf "Usage: sshkeyput.sh user host [port]\n" ; exit 1 ;;
esac
ssh-keygen -C $USER@$HOSTNAME -f $HOME/.ssh/id_rsa -N ""
temp_file=$(mktemp)
scp -p -P $port $1@$2:~/.ssh/authorized_keys $temp_file
cat $HOME/.ssh/id_rsa.pub >>$temp_file
sort -u $temp_file -o $temp_file
scp -p -P $port $temp_file $1@$2:~/.ssh/authorized_keys
rm $temp_file

