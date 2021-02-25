require "test_helper"

describe Department do
  let(:department) { Department.new }

  it "must be valid" do
    value(department).must_be :valid?
  end
end
