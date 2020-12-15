FactoryBot.define do
  factory :genre do
    association :movies, factory: :movies
    name { "MyString" }
  end
end
