FactoryBot.define do
  factory :pass_souvenir, class: Souvenir do 
    name {"MyString"}
    spot {"MyString"}
    price {1}
    picture {"MyString"}
    genre {"MyString"}
    comment {"MyString"}
  end

  factory :failure_souvenir, class: Souvenir do
    name {" "}
    spot {" "}
    price { }
    picture {" "}
    genre {" "}
    comment{"美味しい"}
  end

  factory :no_picture_souvenir, class: Souvenir do 
    name {"MyString"}
    spot {"MyString"}
    price {1}
    picture {" "}
    genre {"MyString"}
    comment {"MyString"}
  end
end