# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'upcoming_movies_in_the_park/version'

Gem::Specification.new do |spec|
  spec.name          = "upcoming_movies_in_the_park"
  spec.version       = UpcomingMoviesInThePark::VERSION
  spec.authors       = ["sgibson47"]
  spec.email         = ["sgibson47@gmail.com"]

  spec.summary       = %q{Upcoming Movies In The Park}
  spec.description   = %q{Provides details on upcoming movies in Chicagos parks.}
  spec.homepage      = "https://github.com/sgibson47/upcoming_movies_in_the_park"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = "upcoming_movies_in_the_park"
  spec.require_paths = ["lib", "lib/upcoming_movies_in_the_park"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "nokogiri", "~> 1.8.1"
  spec.add_development_dependency "open-uri", '~> 0'
end
