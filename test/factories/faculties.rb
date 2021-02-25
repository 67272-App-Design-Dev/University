FactoryBot.define do
  factory :faculty do
    first_name { "MyString" }
    last_name { "MyString" }
    department { nil }
    rank { "MyString" }
    active { false }
  end
end
