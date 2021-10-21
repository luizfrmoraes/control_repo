class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDLp6blL79V+RgnBam6Fj6E8rBjmZ/wAVNfRGo3JXXP5Pa6IvJvQ6Y7ygcnyf8WJF2EJmOgUuBU6UO/TIujXr/CbEeXwYo399GT6Q1fFN8MFTRjFFUKamN+jrhmqL3wJihZUUNOgAI6q2Te5VP149KVnBebPyduKKi5ntkgaNnzzWSIQL01a31bCig9HaA1iG9Ty8iqRa1OCwOVlt/wnUnHCAwCBdbhWy8EHD674QgaQ5hTRRaSAhC8JqAFvUVlOYBrEwbVesVMh+1rbOzqj6r9z3CmAab+2Zd/qAXcqMJML1Pn/Zpnag0AsYoe45lAc0eSG8J+GI6YsXWS7G0fkLqv',
	}
}
