def system_try_and_fail(command)
  sh command do |ok, res|
    if !ok
      system_try_and_fail "git checkout master"
      raise "FAILURE: Error running #{command} (Pwd: #{Dir.pwd}, exit status:#{res.exitstatus}). Aborting"
    end
  end
end

namespace :server do

  STAGING_APP = "recipe-server-stage"
  PRODUCTION_APP = "recipe-server-prod"

  def restart_app(app)
    system_try_and_fail "heroku restart --app=#{app}"
    system_try_and_fail "heroku run rake flush_cache --app=#{app}"
  end

  namespace :staging do

    def reset_database
      system_try_and_fail "heroku pg:reset DATABASE --app=#{STAGING_APP} --confirm=#{STAGING_APP}"
    end

    task :reset_database do
      reset_database
    end

    task :restart_app do
      restart_app(STAGING_APP)
    end

    task :migrate do
      system_try_and_fail "heroku run rake db:migrate --app=#{STAGING_APP}"
      restart_app(STAGING_APP)
    end

    task :seed do
      system_try_and_fail "heroku run rake db:seed --app=#{STAGING_APP}"
    end

  end

  namespace :production do

    task :restart_app do
      restart_app(PRODUCTION_APP)
    end

    task :migrate do
      system_try_and_fail "heroku run rake db:migrate --app=#{PRODUCTION_APP}"
      restart_app(PRODUCTION_APP)
    end

  end

end