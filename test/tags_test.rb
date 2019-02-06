require 'test_helper'

class TagsTest < ActiveSupport::TestCase
  def setup
    @tags = ::SystemTag::Tags.new('Tag1' => 1, 'Tag2' => 2)
  end

  test "when string is look like a series of system tags" do
    expected =  "<system data-name='Tag1' data-value='1'></system>"
    expected << "<system data-name='Tag2' data-value='2'></system>"

    assert_equal(expected, @tags.to_s)
  end

  test "when string then html safely" do
    assert_same(true, @tags.to_s.html_safe?)
  end
end
