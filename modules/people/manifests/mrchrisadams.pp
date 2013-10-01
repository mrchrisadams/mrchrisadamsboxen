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


  include clojure

  include sublime_text_2
  include sequel_pro

  # databases
  include redis
  include mysql

  include postgresql

  # paas
  include heroku
  include foreman

  # video
  include vlc
  include handbrake

  # not work
  include rdio
  include transmission

  # add symlink for nodejs, so things that
  # assume node is in a common directroy still work
  file { '/usr/local/bin/node':
     ensure => 'link',
     target => '/opt/boxen/nodenv/shims/node',
  }

  # add phantomjs for security workshop
  include phantomjs
  phantomjs::version { '1.9.0': }

  # graphics
  include inkscape

  # add password handling
  include keepassx

  # for editing markdown
  include mou
  include mou::themes


  # for working spreadsheets and stuff
  include libreoffice

  #omnidisksweeper
  include omnidisksweeper

  # for working with .env files on projects
  package {
    ["autoenv"]:
    ensure => present
  }


}

