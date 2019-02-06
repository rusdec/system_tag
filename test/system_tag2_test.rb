require 'test_helper'

class SystemTag::Test < ActiveSupport::TestCase
  test "returns correct system tags" do
    expected =  "<system data-name='node_address' data-value='test.strahovkaru.ru'></system>"
    expected << "<system data-name='app_address' data-value='0.0.0.0'></system>"
    expected << "<system data-name='test_address1' data-value='test.address1'></system>"
    expected << "<system data-name='test_address2' data-value='test.address2'></system>"
    expected << "<system data-name='test_address3' data-value='test.address3'></system>"

    assert_equal(::SystemTag.tags, expected)
  end

  test 'returns html safely string' do
    assert_same(::SystemTag.tags.html_safe?, true)
  end
end
