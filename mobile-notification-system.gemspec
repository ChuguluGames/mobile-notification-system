# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "mobile-notification-system/version"

Gem::Specification.new do |s|
  s.name        = "mobile-notification-system"
  s.version     = Mobile::Notification::System::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["François Benaiteau"]
  s.email       = ["francois@chugulu.com"]
  s.homepage    = ""
  s.summary     = %q{Manage notifications for iphone }
  s.description = %q{Generate and send notifications via APNS or/and RSS feed}

  s.rubyforge_project = "mobile-notification-system"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  #add dependencies
  s.add_dependency(%q<apn_on_rails>, [">= 0"])
  s.add_dependency(%q<delayed_job>, [">= 0"])  
end
