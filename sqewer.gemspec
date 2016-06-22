# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: sqewer 5.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "sqewer"
  s.version = "5.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Julik Tarkhanov"]
  s.date = "2016-06-22"
  s.description = "Process jobs from SQS"
  s.email = "me@julik.nl"
  s.executables = ["sqewer", "sqewer_rails"]
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files = [
    ".gitlab-ci.yml",
    ".travis.yml",
    ".yardopts",
    "ACTIVE_JOB.md",
    "DETAILS.md",
    "FAQ.md",
    "Gemfile",
    "README.md",
    "Rakefile",
    "bin/sqewer",
    "bin/sqewer_rails",
    "example.env",
    "lib/sqewer.rb",
    "lib/sqewer/atomic_counter.rb",
    "lib/sqewer/cli.rb",
    "lib/sqewer/connection.rb",
    "lib/sqewer/connection_messagebox.rb",
    "lib/sqewer/execution_context.rb",
    "lib/sqewer/extensions/active_job_adapter.rb",
    "lib/sqewer/extensions/appsignal_wrapper.rb",
    "lib/sqewer/extensions/railtie.rb",
    "lib/sqewer/middleware_stack.rb",
    "lib/sqewer/null_logger.rb",
    "lib/sqewer/resubmit.rb",
    "lib/sqewer/serializer.rb",
    "lib/sqewer/simple_job.rb",
    "lib/sqewer/state_lock.rb",
    "lib/sqewer/submitter.rb",
    "lib/sqewer/version.rb",
    "lib/sqewer/worker.rb",
    "spec/spec_helper.rb",
    "spec/sqewer/active_job_spec.rb",
    "spec/sqewer/atomic_counter_spec.rb",
    "spec/sqewer/cli_app.rb",
    "spec/sqewer/cli_spec.rb",
    "spec/sqewer/connection_spec.rb",
    "spec/sqewer/execution_context_spec.rb",
    "spec/sqewer/middleware_stack_spec.rb",
    "spec/sqewer/serializer_spec.rb",
    "spec/sqewer/simple_job_spec.rb",
    "spec/sqewer/submitter_spec.rb",
    "spec/sqewer/worker_spec.rb",
    "spec/sqewer_module_spec.rb",
    "sqewer.gemspec"
  ]
  s.homepage = "https://gitlab.wetransfer.net/julik/sqewer"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "A full-featured library for all them worker needs"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<aws-sdk>, ["~> 2"])
      s.add_runtime_dependency(%q<very_tiny_state_machine>, [">= 0"])
      s.add_runtime_dependency(%q<hash_tools>, [">= 0"])
      s.add_runtime_dependency(%q<exceptional_fork>, [">= 0"])
      s.add_development_dependency(%q<ks>, [">= 0"])
      s.add_development_dependency(%q<dotenv>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 3.2.0"])
      s.add_development_dependency(%q<rspec-wait>, [">= 0"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 2.0.1"])
      s.add_development_dependency(%q<activerecord>, ["~> 4.2"])
      s.add_development_dependency(%q<activejob>, ["~> 4.2.6"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
    else
      s.add_dependency(%q<aws-sdk>, ["~> 2"])
      s.add_dependency(%q<very_tiny_state_machine>, [">= 0"])
      s.add_dependency(%q<hash_tools>, [">= 0"])
      s.add_dependency(%q<exceptional_fork>, [">= 0"])
      s.add_dependency(%q<ks>, [">= 0"])
      s.add_dependency(%q<dotenv>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 3.2.0"])
      s.add_dependency(%q<rspec-wait>, [">= 0"])
      s.add_dependency(%q<simplecov>, [">= 0"])
      s.add_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_dependency(%q<bundler>, ["~> 1.0"])
      s.add_dependency(%q<jeweler>, ["~> 2.0.1"])
      s.add_dependency(%q<activerecord>, ["~> 4.2"])
      s.add_dependency(%q<activejob>, ["~> 4.2.6"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
    end
  else
    s.add_dependency(%q<aws-sdk>, ["~> 2"])
    s.add_dependency(%q<very_tiny_state_machine>, [">= 0"])
    s.add_dependency(%q<hash_tools>, [">= 0"])
    s.add_dependency(%q<exceptional_fork>, [">= 0"])
    s.add_dependency(%q<ks>, [">= 0"])
    s.add_dependency(%q<dotenv>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 3.2.0"])
    s.add_dependency(%q<rspec-wait>, [">= 0"])
    s.add_dependency(%q<simplecov>, [">= 0"])
    s.add_dependency(%q<rdoc>, ["~> 3.12"])
    s.add_dependency(%q<bundler>, ["~> 1.0"])
    s.add_dependency(%q<jeweler>, ["~> 2.0.1"])
    s.add_dependency(%q<activerecord>, ["~> 4.2"])
    s.add_dependency(%q<activejob>, ["~> 4.2.6"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
  end
end

