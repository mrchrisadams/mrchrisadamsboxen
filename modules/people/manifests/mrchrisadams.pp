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

  # for crypto
  include gpgtools


  include python

  # for Geo and mapping work
  package { "gdal":
    ensure => installed,
  }

  package {
    ["saltstack"]:
    ensure => present
  }

  # needed for git svn to work
  package {
    ["subversion"]:
    ensure => present,
    install_options => [
    '--perl'
    ]
  }

  include clojure

  include sequel_pro

  # message queues
  package {
    ["zeromq"]:
    ensure => present
  }


  # databases
  include redis
  include mysql

  include postgresql
  include mongodb

  # iaas
  package {
    ["awscli"]:
    ensure => present
  }


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
  # assume node is in a common directory still work
  file { '/usr/local/bin/node':
     ensure => 'link',
     target => '/opt/boxen/nodenv/shims/node',
  }


  nodejs::module { 'yo':
    node_version => 'v0.10.13'
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
  # include mou::themes

  # for working spreadsheets and stuff
  include libreoffice

  #omnidisksweeper
  include omnidisksweeper

  # for working with .env files on projects
  package {
    ["autoenv"]:
    ensure => present
  }

  # Install fish, but don't set it as your default shell
  class { 'fish':
    chsh => true,
  }

  # this installs go, but not a version of go, it seems
  include go
  include go::1_1
  # needed for go
  include mercurial

  # Adding spiff to build cloudfoundry locally
  #package {
#    ["spiff"]:
#    ensure => present
#  }

  # for local development on ruby app
  include pow
  include github_for_mac

}
