# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

# Shortcut for a module from GitHub's boxen organization
def github(name, *args)
  options ||= if args.last.is_a? Hash
    args.last
  else
    {}
  end

  if path = options.delete(:path)
    mod name, :path => path
  else
    version = args.first
    options[:repo] ||= "boxen/puppet-#{name}"
    mod name, version, :github_tarball => options[:repo]
  end
end

# Shortcut for a module under development
def dev(name, *args)
  mod name, :path => "#{ENV['HOME']}/src/boxen/puppet-#{name}"
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "3.7.0"

# Support for default hiera data in modules

github "module_data", "0.0.3", :repo => "ripienaar/puppet-module-data"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "dnsmasq",     "2.0.0"
github "foreman",     "1.2.0"
github "gcc",         "2.2.0"
github "git",         "2.5.0"
github "go",          "1.1.0"
github "homebrew",    "1.9.5"
github "hub",         "1.3.0"
github "inifile",     "1.1.1", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",       "1.4.3"
github "nodejs",      "3.8.1"
github "openssl",     "1.0.0"
github "phantomjs",   "2.3.0"
github "pkgconfig",   "1.0.0"
github "repository",  "2.3.0"
github "ruby",        "8.1.4"
github "stdlib",      "4.2.1", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",        "1.0.0"
github "xquartz",     "1.2.1"

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
github "python",    "1.1.1"

# datastores and databases
github "redis",               "0.3.0"
github "mysql",               "1.1.0"

# dependency on PG
github "sysctl",              "1.0.0"
# github "postgresql",          "2.0.1"

github "mongodb",             "0.2.1"


github "pow",                 "2.0.3"

# paas
github "heroku",              "2.0.0"

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

github "github_for_mac",      "1.0.2"
