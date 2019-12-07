FactoryBot.define do

  factory :souvenir, class: Souvenir do 
      name {"MyString"}
      spot {"MyString"}
      price {1}
      picture {"MyString"}
      genre {"MyString"}
      comment {"MyString"}
      user

      trait :failure do
        name {' '}
      end
      
    end
  end