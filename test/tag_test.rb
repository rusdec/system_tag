require 'test_helper'

class TagTest < ActiveSupport::TestCase
  def setup
    @tag = ::SystemTag::Tag.new(name: 'tag', value: '1')
  end

  test "when string tag look like a system tag" do
    assert_equal("<system data-name='tag' data-value='1'></system>", @tag.to_s)
  end

  test "when string then html safely" do
    assert_same(true, @tag.to_s.html_safe?)
  end
end
