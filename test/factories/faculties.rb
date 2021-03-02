FactoryBot.define do
  factory :faculty do
    first_name { "Jeria" }
    last_name { "Quesenberry" }
    association :department
    rank { "Professor" }
    active { true }
  end
end
