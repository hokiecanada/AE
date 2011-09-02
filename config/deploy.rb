
set :application, "AE"
set :repository,  "git@github.com:hokiecanada/AE.git"
set :domain, 'webserver'

set :database_conf, "#{current_path}/config/mongrel_cluster.yml"

set :scm, :git
set :deploy_via, :remmote_cache

ssh_options[:paranoid] = false

set :user, 'mongrel'
set :runner, 'mongrel'
set :use_sudo, false

role :web, domain                         # Your HTTP server, Apache/etc
role :app, domain                         # This may be the same as your `Web` server
role :db,  domain, :primary => true # This is where Rails migrations will run

task :update_config, :role => [:app] do
	run "cp -f #{shared_path}/config/* #{release_path}/config"
end
after 'deploy:update_code', :update_config