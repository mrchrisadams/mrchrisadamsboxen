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

  include sublime_text_2
}
  