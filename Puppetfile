# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

def github(name, version, options = nil)
  options ||= {}
  options[:repo] ||= "boxen/puppet-#{name}"
  mod name, version, :github_tarball => options[:repo]
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen",      "3.0.2"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "autoconf",   "1.0.0"
github "dnsmasq",    "1.0.0"
github "gcc",        "2.0.1"
github "git",        "1.2.5"
github "homebrew",   "1.4.1"
github "hub",        "1.0.3"
github "inifile",    "1.0.0", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",      "1.4.2"
github "nodejs",     "3.2.9"
github "openssl",    "1.0.0"
github "repository", "2.2.0"
github "ruby",       "6.3.4"
github "stdlib",     "4.1.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",       "1.0.0"
github "xquartz",    "1.1.0"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.

# Explicitly included to add more os_x resource types
github "osx",     "1.6.0"

github "java",    "1.1.0"
github "wget",    "1.0.0"

# clojure
github 'clojure',   "1.2.0"


# sigh… php
github "autoconf",  "1.0.0"
github "libtool",   "1.0.0"
github "pkgconfig", "1.0.0"
github "pcre",      "1.0.0"

# these are dependencies for php
github "php",   "1.1.0"


# these are dependencies for python
github "xquartz",   "1.1.0"
github "python",    "1.1.1"

# go, yo
github "go",        "1.0.1"

# datastores and databases
github "redis",               "0.3.0"
github "mysql",               "1.1.0"

# dependency on PG
github "sysctl",              "1.0.0"
github "postgresql",          "0.2.1"

github "mongodb",             "0.2.1"




# paas
github "heroku",              "2.0.0"
github "foreman",             "1.0.0"

github "sequel_pro",          "1.0.0"

# bitTorrent
github "transmission",  "1.0.0"

# video
github "handbrake",           "1.0.1"
github "vlc",                 "1.0.4"

#graphics
github "inkscape",            "1.0.3"

# music
github "rdio",                "1.0.0"
github "spotify",             "1.0.1"

# phantomjs
github "phantomjs",           "2.0.2"

# password management
github "keepassx",            "1.0.0"

# for editing markdown
github "mou",                 "1.1"
github "property_list_key",   "0.1.0"

# libreoffice
github "libreoffice",         "4.1.1"

github "omnidisksweeper",     "0.0.2", :repo => "mrchrisadams/puppet-omnidisksweeper"
github "mercurial",           "0.0.1", :repo => "bluesalt/puppet-mercurial"

github "gpgtools",            "1.2.0", :repo => "envato/puppet-gpgtools"


# trying it out. Not as compatable as zsh, but otherwise seems lovely.
github "fish",                "1.0.0"
