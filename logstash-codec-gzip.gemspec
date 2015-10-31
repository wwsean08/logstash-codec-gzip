
Gem::Specification.new do |s|

  s.name            = 'logstash-codec-gzip'
  s.version         = '0.0.1'
  s.licenses        = ['Apache License (2.0)']
  s.summary         = 'This codec may be used to decompress gzipped messages via input or compress messages using gzip on output'
  s.description     = "This gem is a logstash plugin required to be installed on top of the Logstash core pipeline using $LS_HOME/bin/plugin install gemname. This gem is not a stand-alone program"
  s.authors         = ["wwsean08"]
  s.email           = 'sean@wwsean08.com'
  s.homepage        = "http://wwsean08.com"
  s.require_paths = ['lib']

  # Files
  s.files = Dir['lib/**/*','spec/**/*','vendor/**/*','*.gemspec','*.md','CONTRIBUTORS','Gemfile','LICENSE','NOTICE.TXT']

  # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { 'logstash_plugin' => 'true', 'group' => 'codec' }

  # Gem dependencies
  s.add_runtime_dependency "logstash-core", ">= 2.0.0.beta2", "< 3.0.0"
  s.add_runtime_dependency 'logstash-codec-plain'

  s.add_development_dependency 'logstash-devutils'
end
