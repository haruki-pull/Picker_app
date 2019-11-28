FactoryBot.define do
  factory :pass_user, class: User do
    name { "MyString" }
    email { Faker::Internet.email }
    password {"MyString"}
    password_confirmation {"MyString"}
  end

  factory :failure_user, class: User do
    name { "MyString" }
    email { "facker@kencom.com" }
    password {"MyString"}
    password_confirmation {""}
  end
end

