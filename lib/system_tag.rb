require 'system_tag/tag'
require 'system_tag/tags'
require 'system_tag/yaml_loader'

module SystemTag
  def self.tags
    Tags.new(YamlLoader.new.load).to_s
  end
end
