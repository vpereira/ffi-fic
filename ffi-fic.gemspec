$:.push File.expand_path("../lib", __FILE__)

require "ffi-fic/version"

Gem::Specification.new do |s|
  s.name        = "ffi-fic"
  s.version     = FIC::VERSION
  s.date        = "2015-03-13"
  s.summary     = "ruby wraper for the file integrity checker tool!"
  s.description = "wrapper for the fic tool"
  s.authors     = ["Victor Pereira"]
  s.email       = 'vpereira@suse.com'
  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.homepage    = 'https://github.com/vpereira/ffi-fic'
  s.license       = 'MIT'
  # TODO
  # add development dependencies
end
