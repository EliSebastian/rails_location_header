require_relative "lib/rails_location_header/version"

Gem::Specification.new do |spec|
  spec.name = "rails_location_header"
  spec.version = RailsLocationHeader::VERSION
  spec.authors = ["Eli Sebastian Herrera Aguilar"]
  spec.email = ["esrbastianherrera@gmail.com"]

  spec.summary = "Adds X-Entity-ID and Location headers in create actions."
  spec.description = "A Rails gem that automatically adds X-Entity-ID and Location headers when a new record is created
                      successfully."
  spec.homepage = "https://github.com/EliSebastian/rails_location_header"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/EliSebastian/rails_location_header"
  spec.metadata["changelog_uri"] = "https://github.com/EliSebastian/rails_location_header/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename __FILE__
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git appveyor Gemfile])
    end
  end

  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", ">= 6.0"
end
