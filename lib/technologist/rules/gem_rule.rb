require 'technologist/rules/file_content_rule'

class GemRule < FileContentRule
  attr_accessor :gem_name

  def initialize(framework, attributes = {})
    super

    self.file_name = 'Gemfile'
    self.gem_name ||= framework.downcase
    self.file_content_pattern = /^\s*gem ["']#{gem_name}["']/
  end
end
