node 'losttemple.linuxmaster.com' {
#	include let_it_go
}

node 'uvm01.linuxmaster.com' {
	include sshd
	include localmail
}

node /^uvm[0-9]+\.linuxmaster\.com$/ {
	include sshd
#	include localmail
}
