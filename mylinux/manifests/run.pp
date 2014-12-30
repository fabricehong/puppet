$mods = ['common', 'git', 'home']

class { 'mylinux':
  mods => $mods
}
# notify{"${::id}":}
