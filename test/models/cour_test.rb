require 'test_helper'

class CourTest < ActiveSupport::TestCase
  def setup
    @cour = Cour.new(title: "Example", description: "Example")
  end

  test "should be valid" do
    assert @cour.valid?
  end

  test "title should be valid" do
  	@cour.title = "     "
    assert_not @cour.valid?
  end

  test "description should be valid" do
  	@cour.description = "     "
    assert_not @cour.valid?
  end
end
