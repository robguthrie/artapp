set :application, "artapp"
set :repository,  "git@github.com:robguthrie/artapp.git"

set :scm, :git
set :use_sudo, false
set :deploy_to, "/home/rob/websites/artapp"
server "dinotech.co.nz", :app, :web, :db, :primary => true


namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end
