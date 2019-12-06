FactoryBot.define do
  factory :souvenir, class: Souvenir do 
      name {"MyString"}
      spot {"MyString"}
      price {1}
      picture {"MyString"}
      genre {"MyString"}
      comment {"MyString"}
      user
      end
  
    factory :pass_souvenir, class: Souvenir do 
      name {"MyString"}
      spot {"MyString"}
      price {1}
      picture {"MyString"}
      genre {"MyString"}
      comment {"MyString"}
      user
    end
  # factory :failure_souvenir, class: Souvenir do
  #   name {" "}
  #   spot {" "}
  #   price { }
  #   picture {" "}
  #   genre {" "}
  #   comment{"美味しい"}
  #   user
  # end

  factory :no_picture_souvenir, class: Souvenir do 
    name {"MyString"}
    spot {"MyString"}
    price {1}
    picture {" "}
    genre {"MyString"}
    comment {"MyString"}
    pass_user
  end

end