require 'test_helper'

class YamlLoaderTest < ActiveSupport::TestCase
  def setup
    #NODE_ADDRESS: test.strahovkaru.ru
    #APP_ADDRESS: 0.0.0.0
    #API_KEY: 000
    @yaml_loader = ::SystemTag::YamlLoader.new
  end

  test 'behaves like ActiveSupport::Configurable' do
    assert_kind_of ActiveSupport::Configurable, @yaml_loader
  end

  test 'loads correct data from yaml file' do
    expected = {
      'node_address'  => 'test.strahovkaru.ru',
      'app_address'   => '0.0.0.0',
      'test_address1' => 'test.address1',
      'test_address2' => 'test.address2',
      'test_address3' => 'test.address3',
    }

    assert_equal(@yaml_loader.load, expected)
  end

  test 'keys_file option is not writables' do
    assert_same(@yaml_loader.respond_to?(:keys_file=), false)
  end

  test 'data_file option is not writables' do
    assert_same(@yaml_loader.respond_to?(:data_file=), false)
  end
end
