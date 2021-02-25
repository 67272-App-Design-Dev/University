FactoryBot.define do
  factory :course do
    name { "MyString" }
    unit_prefix { 1 }
    number { 1 }
    units { 1 }
    active { false }
  end
end
