$modules = ['common', 'git', 'home']

class { 'mylinux':
  modules => $modules
}
# notify{"${::id}":}
