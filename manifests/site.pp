node 'losttemple.linuxmaster.com' {
#	include let_it_go
}

node 'uvm01.linuxmaster.com' {
	file {'/tmp/testserver':
		content => "This is a test server.\n",
	}
	include sshd
}

node /^uvm[0-9]+\.linuxmaster\.com$/ {
	include sshd
#	include localmail
}
