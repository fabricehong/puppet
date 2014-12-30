class mylinux ($mods) {
  

  class { 'bash_aliases':
    mods => $mods
  }
}