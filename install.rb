# frozen_string_literal: true

require 'yaml'
YAML.load_file(File.join(__dir__, 'version.yaml')).each do |lib, version|
  system("gem install -NE --conservative --version #{version} #{lib}", exception: true)
end
