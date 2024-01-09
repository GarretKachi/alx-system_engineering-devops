#!/usr/bin/env bash
# Using puppet to make changes to our configuration file

file { '/etc/ssh/ssh_config':
}

file_line {'Turn off password auth':
path  => '/etc/ssh/ssh_config',
line  => 'PasswordAuthentication no',
match => '^#PasswordAuthentication',
}

file_line { 'Declare the identity file':
path  => '/etc/ssh/ssh_config',
line  => 'IdentityFile ~/.ssh/school',
match => '^#IdentityFile',
}
