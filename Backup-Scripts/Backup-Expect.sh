#!/usr/bin/expect
#
# Author: Alexandre de Paula
#
# Description: Log on TPLink and get backup of running-config

# Set Variables
set user [lindex $argv 0];
set host [lindex $argv 1];
set pass [lindex $argv 2];
set timeout 2;

spawn ssh $user@$host
expect -exact "Password: "
send -- "$pass\r"
expect -exact "\*#"
send -- "show running-config\r"
expect {
	"*More*" {
		send " "
		exp_continue
		sleep 1
	}
	"\*#"{
		send -- "exit\r"
		exp_continue
		sleep 1
	}
}