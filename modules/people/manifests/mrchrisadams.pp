# include handy deps for development

class people::mrchrisadams {

  include wget
  include java

	include autoconf
	include libtool
	include pkgconfig
	include pcre

  class { 'php::global':
		version => '5.4.10'
  }

  include python

  include sublime_text_2
  include sequel_pro

  # add symlink for nodejs, so things that
  # assume node is in a common directroy still work
  file { '/usr/local/bin/node':
     ensure => 'link',
     target => '/opt/boxen/nodenv/shims/node',
  }

}

