# include handy deps for development

class people::mrchrisadams {
  include wget 
  include java
  notify { 'hello world': }
}
  