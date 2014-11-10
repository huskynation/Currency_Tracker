task :travis do
  ['rake test', 'rake cucumber'].each do |cmd|
    puts "Starting to run #{cmd}..."
    system("export DISPLAY=:99.0 && bundle exec #{cmd}")
    fail "#{cmd} failed!" unless $CHILD_STATUS.exitstatus == 0
  end
end
