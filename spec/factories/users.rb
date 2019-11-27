FactoryBot.define do
  factory :pass_user do
    name { "MyString" }
    email { Faker::Internet.email }
    password {"MyString"}
    password_confirmation {"MyString"}
  end

  factory :falure_user do
    name { "MyString" }
    email { facker.com }
    password {"MyString"}
    password_confirmation {"MyString"}
  end
end

