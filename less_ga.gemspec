# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{less_ga}
  s.version = "0.0.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Steven Bristol"]
  s.date = %q{2012-03-24}
  s.description = %q{Access google analytic data from your ruby app.}
  s.email = %q{steve@lesseverything.com}
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    "Gemfile",
    "Gemfile.lock",
    "Guardfile",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "less_ga.gemspec",
    "lib/less_ga.rb",
    "lib/less/ga/auth.rb",
    "lib/less/ga/data.rb",
    "test/test_helper.rb"
  ]
  s.homepage = %q{http://github.com/LessEverything/less_ga}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.4.2}
  s.summary = %q{Access google analytic data from your ruby app.}

  s.add_runtime_dependency(%q<faraday>, "0.9.0")
  s.add_runtime_dependency(%q<google-api-client>, ["0.7.1"])
  s.add_runtime_dependency(%q<httparty>, "0.11.0")
  # if s.respond_to? :specification_version then
  #   s.specification_version = 3
  # 
  #   if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
  #     s.add_development_dependency(%q<yard>, ["~> 0.7"])
  #     s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
  #     s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
  #     s.add_development_dependency(%q<jeweler>, ["~> 1.8.3"])
  #     s.add_development_dependency(%q<rcov>, [">= 0"])
  #     s.add_development_dependency(%q<guard>, [">= 0"])
  #     s.add_development_dependency(%q<guard-test>, [">= 0"])
  #     s.add_development_dependency(%q<google-api-client>, ["0.6.3"])
  #     s.add_development_dependency(%q<httparty>, ["0.11.0"])
  #   else
  #     s.add_dependency(%q<yard>, ["~> 0.7"])
  #     s.add_dependency(%q<rdoc>, ["~> 3.12"])
  #     s.add_dependency(%q<bundler>, ["~> 1.0.0"])
  #     s.add_dependency(%q<jeweler>, ["~> 1.8.3"])
  #     s.add_dependency(%q<rcov>, [">= 0"])
  #     s.add_dependency(%q<guard>, [">= 0"])
  #     s.add_dependency(%q<guard-test>, [">= 0"])
  #   end
  # else
  #   s.add_dependency(%q<yard>, ["~> 0.7"])
  #   s.add_dependency(%q<rdoc>, ["~> 3.12"])
  #   s.add_dependency(%q<bundler>, ["~> 1.0.0"])
  #   s.add_dependency(%q<jeweler>, ["~> 1.8.3"])
  #   s.add_dependency(%q<rcov>, [">= 0"])
  #   s.add_dependency(%q<guard>, [">= 0"])
  #   s.add_dependency(%q<guard-test>, [">= 0"])
  # end
end

