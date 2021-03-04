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

      
    end




  end
end
