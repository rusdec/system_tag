SystemTag::YamlLoader.configure do |config|
  config.keys_file = File.expand_path('./test/dummy/config/system_tag.yml')
  config.data_file = File.expand_path('./test/dummy/config/application.yml')
end
