FactoryBot.define do

   factory :user, class: User do
    name { "MyString" }
    email { "MyString@gmail.com" }
    password {"MyString"}
    password_confirmation {"MyString"}
    
    # souvenirs {[
    #   FactoryBot.build(:souvenir, user: nil)
    #  ]}

    trait :failure do
      name {' '}
    end
    
   end
  end