require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new do |c|
  options = ['--color']
  options += ['--format', 'documentation']
  c.rspec_opts = options
end

desc "Generate lexer"
task :lexer do
  `rex calculator.rex -o lexer.rb`
end

desc "Generate parser"
task :parser do
  `racc test_language.y -o parser.rb`
end

desc "Generate lexer and parser"
task generate: [:lexer, :parser]

