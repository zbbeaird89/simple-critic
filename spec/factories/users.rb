FactoryBot.define do
  factory :user do
    username { "foobar" }
    email { "foo@bar.com" }
    password { "password" }
    password_confirmation { "password" }
  end
end
