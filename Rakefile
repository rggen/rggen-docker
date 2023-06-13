# frozen_string_literal: true

require 'bundler/gem_helper'
require 'yaml'

tag_naem =
  YAML
    .load_file(File.join(__dir__, 'version.yaml'))
    .values.join('-')

class Bundler::GemHelper
  def initialize
    @base = __dir__
  end
end

helper = Bundler::GemHelper.new
helper.define_singleton_method(:version) { tag_naem }

desc "Create tag #{tag_naem}"
task :tag do
  helper.instance_exec do
    tag_version { git_push } unless already_tagged?
    #tag_version unless already_tagged?
  end
end
