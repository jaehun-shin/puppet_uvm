class localmail {
	package { 'postfix' :
		ensure => '2.9.6-1~12.04.1',
	}

	package { 'mailutils' :
		ensure => '1:2.2+dfsg1-5',
	}

	file { 'report':
		name => '/usr/local/bin/report',
		owner => root,
		group => root,
		mode => 755,
		source => 'puppet:///modules/localmail/report',
		require => Package['mailutils'],
	}
}
