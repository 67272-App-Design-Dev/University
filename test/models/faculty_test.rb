require "test_helper"

class FacultyTest < ActiveSupport::TestCase
  # Matchers
  should belong_to(:department)
  should have_many(:assignments)
  should have_many(:courses).through(:assignments)

  should validate_presence_of(:first_name)
  should validate_presence_of(:last_name)
  should validate_inclusion_of(:rank).in_array(["Assistant Professor", "Associate Professor", "Professor"])

  # Context
  context "Given context" do
    setup do 
      create_departments
      create_faculties
    end

    # test the scope 'alphabetical'
    should "shows that there are three faculty in in alphabetical order" do
      assert_equal ["David", "David", "Jeria"], Faculty.alphabetical.map{|f| f.first_name}
    end
    
    # test the scope 'active'
    should "shows that there are two active faculty" do
      assert_equal 2, Faculty.active.size  # necessary, but not sufficient

      # assert_equal ["David", "Jeria"], Faculty.active.map{|f| f.first_name}.sort
      ### another way to do this would be...
      assert_equal [@koz, @profq], Faculty.active.sort_by{|f| f.last_name}
    end


  end
end
