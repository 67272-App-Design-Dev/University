require "test_helper"

class DepartmentTest < ActiveSupport::TestCase
  # Matchers
  should have_many(:faculties)
  should have_many(:courses).through(:faculties)

  should validate_presence_of(:name)
  should validate_presence_of(:unit_prefix)
  should validate_uniqueness_of(:unit_prefix)

  should allow_value("01").for(:unit_prefix)
  should allow_value("67").for(:unit_prefix)
  should allow_value("99").for(:unit_prefix)

  should_not allow_value("101").for(:unit_prefix)
  should_not allow_value("7").for(:unit_prefix)
  should_not allow_value("K9").for(:unit_prefix)
  should_not allow_value(nil).for(:unit_prefix)


  # Context
  context "Given context" do
    setup do 
      create_departments
    end

    should "show that all factories are properly created" do
      assert_equal "Information Systems", @is.name
      assert_equal "Computer Science", @cs.name
      assert_equal "76", @english.unit_prefix
      assert @business.active
      deny @soc.active
    end


  end
end
