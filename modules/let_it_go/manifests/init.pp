class let_it_go {
	package { 'xsnow' :
		ensure => '1:1.42-8ubuntu2',
	}
	exec { 'xsnow' :
		command => '/usr/games/xsnow &',
		require => Package['xsnow'],
	}
}
