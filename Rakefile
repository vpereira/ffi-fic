require 'rake/testtask'

Rake::TestTask.new(:spec) do |t|
      t.libs << 'lib'
      t.test_files = FileList['spec/*_spec.rb']
      t.verbose = true
end

desc "Run tests"
task :default => :spec
