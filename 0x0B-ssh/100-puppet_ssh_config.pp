# Configure client SSH to use private key and disable password authentication
include stdlib

file_line { 'Disable Password Authentication':
  ensure => present,
  path   => '/etc/ssh/ssh_config',
  line   => '    PasswordAuthentication no',
  replace => true,
}

file_line { 'Use Private Key':
  ensure => present,
  path   => '/etc/ssh/ssh_config',
  line   => '     IdentityFile ~/.ssh/school',
  replace => true,
}
