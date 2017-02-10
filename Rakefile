require 'bundler/gem_tasks'
require 'rdoc/task'

task default: :spec

RDoc::Task.new :rdoc do |rdoc|
  rdoc.main = 'README.md'
  rdoc.rdoc_files.include('README.md', 'lib/*.rb',
                          'lib/rps/*.rb', 'lib/rps/helper/*.rb')
  rdoc.rdoc_dir = 'doc/'
  rdoc.title = 'RPS Documentation'
end
