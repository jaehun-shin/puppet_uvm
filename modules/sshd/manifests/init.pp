class sshd {

    package { 'openssh-server':
        ensure => latest,
    }

    service { 'ssh':
		ensure => running,
		subscribe => File['sshdconfig'],
        require => Package['openssh-server'],
    }

    file { 'sshdconfig':

		notify => Service['ssh'],

        name => '/etc/ssh/sshd_config',
        owner => root,
        group => root,
        mode => 644,
        source => 'puppet:///modules/sshd/sshd_config',
        require => Package['openssh-server'],
    }

	file { '/home/administrator/.ssh/authorized_keys':
		owner => administrator,
		group => administrator,
		mode => 600,
	}

}
