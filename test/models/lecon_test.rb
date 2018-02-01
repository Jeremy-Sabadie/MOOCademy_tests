require 'test_helper'

class LeconTest < ActiveSupport::TestCase
  def setup
    @cour = Cour.new(title:"monCour", description:"Description de mon cour")
    @cour.save
    @lecon = Lecon.new(title:"monlecon", body:"Description de mon livre")
    @lecon.cour = @cour
  end

  test "should be valid" do
    assert @lecon.valid?
  end

  test "title present" do
  	@lecon.title = "     "
    assert_not @lecon.valid?
  end

   test "body should be valid" do
  	@lecon.body = "     "
    assert_not @lecon.valid?
  end 

end
