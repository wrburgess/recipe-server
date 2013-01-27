namespace :rs do

  desc "Reload the databases: drop, create, migrate, test_prepare"
  task :reload => :environment do
    input = ''
    STDOUT.puts "Drop and recreate all databases? y[es] or n[o]"
    input = STDIN.gets.chomp
    if input == "y"
      puts "Executing tasks..."
      %w(db:drop db:create db:migrate db:seed db:test:prepare).each do |task|
        Rake::Task[task].execute
      end
      puts "Tasks completed"
    else
      puts "Aborting tasks..."
    end
  end

end