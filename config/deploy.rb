# config valid only for current version of Capistrano
lock "3.8.2"

set :application, "saped"
set :repo_url, "https://github.com/jdruk/saped.git"

set :deploy_to, "/home/deploy/saped"

append :linked_files, "config/database.yml", "config/secrets.yml"
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "vendor/bundle", "public/system", "public/uploads"

set :console_env, :production
set :console_user, :deploy