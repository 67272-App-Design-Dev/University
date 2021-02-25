require "test_helper"

describe Faculty do
  let(:faculty) { Faculty.new }

  it "must be valid" do
    value(faculty).must_be :valid?
  end
end
