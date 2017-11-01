
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "copyright_view/version"

Gem::Specification.new do |spec|
  spec.name          = "copyright_view"
  spec.version       = CopyrightView::VERSION
  spec.authors       = ["yugeshreddypalvai"]
  spec.email         = ["pyreddy517@hotmail.com"]

  spec.summary       = %q{Add Copywright Message To Webpage Dynamically}
  spec.description   = %q{CopyrightView Gem Allows Devlopers to Add Copyright Message for every webage Dynamically}
  spec.homepage      = "http://www.ror-devs.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
