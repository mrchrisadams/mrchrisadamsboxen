# include handy deps for development

class people::mrchrisadams {

  include wget 
  include java

  class { 'php::global':
	version => '5.4.10'
  }

  include sublime_text_2
}
  