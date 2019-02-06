module SystemTag
  class YamlLoader
    include ActiveSupport::Configurable

    config_accessor :keys_file, instance_writer: false
    config_accessor :data_file, instance_writer: false
      
    def load
      parse_data(data: load_yaml(data_file), keys: load_yaml(keys_file))
    end

    protected

    def parse_data(data:, keys:)
      keys.reduce({}) { |result, key| result.merge!(to_name(key) => data[key]) }
    end

    def environment
      ENV['RAILS_ENV']
    end

    def load_yaml(file)
      YAML.load_file(file)[environment] || {}
    end

    def to_name(key)
      key.downcase.gsub(/\W/,'_')
    end
  end
end
