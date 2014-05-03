class mylinux {
  file{"/home/${::id}/.bashrc":
    ensure => present,
    source => 'puppet:///modules/mylinux/.bashrc'
  }
	file{"/home/${::id}/.bash_aliases":
	    ensure => present,
	    source => 'puppet:///modules/mylinux/.bash_aliases'
	  }   
}