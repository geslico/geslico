# config valid for current version and patch releases of Capistrano
lock "~> 3.10.1"

# defininimos el método deploysecret para que extraiga del fichero deploy-secrets.yml los valores para pre y pro
def deploysecret(key)
    @deploy_secrets_yml ||=  YAML.load_file('config/deploy-secrets.yml')[fetch(:stage).to_s]
    @deploy_secrets_yml[key.to_s]
end

set :rails_env, fetch(:stage)
set :rvm_ruby_version, '2.3.5'
set :rvm_type, :user

set :application, "gslic" # ¿geslico o gslic?
set :server_name, deploysecret(:server_name)
set :full_app_name, fetch(:application)
set :repo_url, "https://github.com/geslico/geslico.git"

# Default branch is :master
# set :scm, :git

set :deploy_to, "/aytomad/app/gslic"

set :log_level, :info
set :pty, true
set :use_sudo, false

set :linked_files, %w{config/database.yml config/secrets.yml}
set :linked_dirs, %w{log tmp public/system public/assets}

set :keep_releases, 10

set :local_user, ENV['USER']

# set :tests, ["spec"]

set(:config_files, %w(
    log_rotation
    database.yml
    secrets.yml
    unicorn.rb
))

namespace :deploy do
    # Comprobar versión del deploy
    before :deploy, 'deploy:check_revision'
    # Compilar assets
    after 'deploy:symlink:shared', 'deploy:compile_assets_locally'
    after :finishing, 'deploy:cleanup'
    # Reiniciar servidor de aplicaciones
    after 'deploy:publishing', 'deploy:restart'
    # after 'deploy:restart', 'sidekiq:restart'
end
