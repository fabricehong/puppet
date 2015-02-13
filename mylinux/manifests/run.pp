$mods = ['common', 'git', 'liip']

class { 'mylinux':
  mods => $mods
}
# notify{"${::id}":}
