FactoryBot.define do

  factory :souvenir, class: Souvenir do 
      name {"MyString"}
      spot {"MyString"}
      price {1}
      picture {"MyString"}
      genre {"MyString"}
      comment {"MyString"}
      user

      trait :new_name do
        name {"YourString"}
      end
         
      trait :invalid_name do
        name {" "}
      end
      
    end
  end