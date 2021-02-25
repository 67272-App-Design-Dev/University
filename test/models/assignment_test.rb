require "test_helper"

describe Assignment do
  let(:assignment) { Assignment.new }

  it "must be valid" do
    value(assignment).must_be :valid?
  end
end
