class bash_aliases ($mods) {
  file { "/home/${::id}/.bash_aliases":
    ensure  => present,
    content => template('mylinux/bash_aliases.erb')
  }

  bash_module { 'functions': }

  bash_module { $mods: category => 'aliases' }
}

define bash_module ($category = undef) {
  if ($category == undef) {
    $prefix = '_'
  } else {
    $prefix = "_${category}_"
  }
  $filename = "bash${$prefix}${title}"

  file { "/home/${::id}/.${filename}":
    ensure => present,
    source => "puppet:///modules/mylinux/${filename}"
  }
}