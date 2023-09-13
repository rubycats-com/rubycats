# Load DSL and set up stages
require "capistrano/setup"

# Include default deployment tasks
require "capistrano/deploy"

# Load the SCM plugin
require "capistrano/scm/git"

install_plugin Capistrano::SCM::Git

# Include tasks from other gems included in your Gemfile
require "capistrano/asdf"
require "capistrano/bundler"
require "capistrano/puma"
require "capistrano/rails/console"
require "capistrano/rails/assets"
require "capistrano/rails/migrations"
require "capistrano/upload-config"

install_plugin Capistrano::Puma
install_plugin Capistrano::Puma::Systemd

# Load custom tasks from `lib/capistrano/tasks` if you have any defined
Dir.glob("lib/capistrano/tasks/*.rake").each { |r| import r }