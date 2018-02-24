lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'is_master'
  spec.version       = File.open('VERSION').read
  spec.authors       = ['Adrien Waksberg']
  spec.email         = ['is_master@yae.im']
  spec.summary       = 'is_master execute a command when it determine that server is master'
  spec.homepage      = 'https://github.com/nishiki/is_master'
  spec.license       = 'Apache-2.0'

  spec.files         = %x(git ls-files -z).split("\x0")
  spec.executables   = %w[is_master is_slave]
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.1'
end
