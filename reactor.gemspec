Gem::Specification.new do |s|
  s.name     = "reactor"
  s.version  = "0.2.1"
  s.date     = "2009-07-04"
  s.summary  = "A pure Ruby reactor library"
  s.email    = "oldmoe@gmail.com"
  s.homepage = "http://github.com/oldmoe/reactor"
  s.description = "A simple, fast reactor library in pure Ruby"
  s.has_rdoc = true
  s.authors  = ["Muhammad A. Ali"]
  s.platform = Gem::Platform::RUBY
  s.files    = [ 
		"reactor.gemspec", 
		"README",
		"lib/reactor.rb",
		"lib/util.rb",
		"lib/timer.rb"
	]
  s.rdoc_options = ["--main", "README"]
  s.extra_rdoc_files = ["README"]
end

