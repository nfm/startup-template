namespace :heroku do
  desc "Bootstrap a Heroku app with required addons and config"
  task :bootstrap do
    run "heroku apps:create #{ENV['APP_NAME']}"
    run "heroku config:set BUILDPACK_URL=https://github.com/ddollar/heroku-buildpack-multi.git"
    run "heroku addons:add papertrail"
    run "heroku addons:add newrelic"
    run "heroku addons:add rediscloud"
    run "heroku pg:backups schedule DATABASE_URL"
    run "heroku ps:scale web=1"
    run "heroku ps:scale worker=1"
    run "git remote rename heroku production"
    run "git push production master"
    run "heroku run bin/rake db:migrate"
  end

  def run(command)
    puts "\n$ #{command}"
    `#{command}`
  end
end
