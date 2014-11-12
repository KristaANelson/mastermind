lib_dir = File.expand_path('lib', __dir__)  # => "/Users/kristaanelson/Turing/practices/mastermind/lib"
$LOAD_PATH.unshift(lib_dir)                 # => ["/Users/kristaanelson/Turing/practices/mastermind/lib", "/Users/kristaanelson/.rvm/gems/ruby-2.1.3/gems/seeing_is_believing-2.1.4/lib", "/Users/kristaanelson/.rvm/rubies/ruby-2.1.3/lib/ruby/site_ruby/2.1.0", "/Users/kristaanelson/.rvm/rubies/ruby-2.1.3/lib/ruby/site_ruby/2.1.0/x86_64-darwin14.0", "/Users/kristaanelson/.rvm/rubies/ruby-2.1.3/lib/ruby/site_ruby", "/Users/kristaanelson/.rvm/rubies/ruby-2.1.3/lib/ruby/vendor_ruby/2.1.0", "/Users/kristaanelson/.rvm/rubies/ruby-2.1.3/lib/ruby/vendor_ruby/2.1.0/x86_64-darwin14.0", "/Users/kristaanelson/.rvm/rubies/ruby-2.1.3/lib/ruby/vendor_ruby", "/Users/kristaanelson/.rvm/rubies/ruby-2.1.3/lib/ruby/2.1.0", "/Users/kristaanelson/.rvm/rubies/ruby-2.1.3/lib/ruby/2.1.0/x86_64-darwin14.0"]
require 'cli'                               # ~> SyntaxError: /Users/kristaanelson/Turing/practices/mastermind/lib/game.rb:79: syntax error, unexpected '-', expecting '|'\n    guess.length.times do |n - 1|\n                              ^\n/Users/kristaanelson/Turing/practices/mastermind/lib/game.rb:83: syntax error, unexpected keyword_end, expecting end-of-input

CLI.new($stdin, $stdout).call

# ~> SyntaxError
# ~> /Users/kristaanelson/Turing/practices/mastermind/lib/game.rb:79: syntax error, unexpected '-', expecting '|'
# ~>     guess.length.times do |n - 1|
# ~>                               ^
# ~> /Users/kristaanelson/Turing/practices/mastermind/lib/game.rb:83: syntax error, unexpected keyword_end, expecting end-of-input
# ~>
# ~> /Users/kristaanelson/.rvm/rubies/ruby-2.1.3/lib/ruby/2.1.0/rubygems/core_ext/kernel_require.rb:55:in `require'
# ~> /Users/kristaanelson/.rvm/rubies/ruby-2.1.3/lib/ruby/2.1.0/rubygems/core_ext/kernel_require.rb:55:in `require'
# ~> /Users/kristaanelson/Turing/practices/mastermind/lib/cli.rb:1:in `<top (required)>'
# ~> /Users/kristaanelson/.rvm/rubies/ruby-2.1.3/lib/ruby/2.1.0/rubygems/core_ext/kernel_require.rb:55:in `require'
# ~> /Users/kristaanelson/.rvm/rubies/ruby-2.1.3/lib/ruby/2.1.0/rubygems/core_ext/kernel_require.rb:55:in `require'
# ~> /Users/kristaanelson/Turing/practices/mastermind/mastermind.rb:3:in `<main>'
