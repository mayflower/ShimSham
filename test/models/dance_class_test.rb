require 'test_helper'

class DanceClassTest < ActiveSupport::TestCase
   test "the truth" do
     assert true
   end
   
   test "should not save a class without name" do
    dance_class = DanceClass.new() 
    assert_not dance_class.save, "Tried to save a dance class without a name"
   end
end
