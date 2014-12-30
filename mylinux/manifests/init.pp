class mylinux ($modules) {
  

  class { 'bash_aliases':
    modules => $modules
  }
}