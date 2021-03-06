FactoryBot.define do

   factory :user, class: User do
    name { "MyString" }
    email { "MyString@gmail.com" }
    password {"MyString"}
    password_confirmation {"MyString"}
    
    trait :new_name do
      name {"YourString"}
    end

    trait :invalid_name do
      name {' '}
    end
    
   end
  end