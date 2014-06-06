Gem::Specification.new do |s|
  s.name        = 'hammerstore'
  s.version     = '0.0.2'
  s.date        = Time.now.strftime("%Y-%m-%d")

  s.summary     = 'Hammerspace backend for BasicCache'
  s.description = "Stores cached values in Hammerspace"
  s.authors     = ['Les Aker']
  s.email       = 'me@lesaker.org'
  s.homepage    = 'https://github.com/akerl/hammerstore'
  s.license     = 'MIT'

  s.files       = `git ls-files`.split
  s.test_files  = `git ls-files spec/*`.split

  s.add_dependency 'basiccache', '~> 0.1.0'
  s.add_dependency 'gnista', '~> 1.0.0'
  s.add_dependency 'hammerspace', '~> 0.1.4'

  s.add_development_dependency 'rubocop', '~> 0.23.0'
  s.add_development_dependency 'rake', '~> 10.3.2'
  s.add_development_dependency 'coveralls', '~> 0.7.0'
  s.add_development_dependency 'rspec', '~> 3.0.0'
  s.add_development_dependency 'fuubar', '~> 2.0.0.rc1'
end
