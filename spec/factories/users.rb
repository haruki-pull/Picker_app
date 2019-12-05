# FactoryBot.define do
# ユーザーデータ 
#  factory :pass_user, class: User do
#     name { "MyString" }
#     email { "facker@kencom.com" }
#     password {"MyString"}
#     password_confirmation {"MyString"}
#   end

#   factory :failure_user, class: User do
#     name { "MyString" }
#     email { "facker@kencom.com" }
#     password {"MyString"}
#     password_confirmation {""}
#   end

#   factory :dup_email_user, class: User do
#   name { "MyString" }
#   email { "facker@kencom.com" }
#   password {"MyString"}
#   password_confirmation {"MyString"}
#   end
# end
# souvenir
# FactoryBot.define do
#   factory :pass_souvenir, class: Souvenir do 
#     name {"MyString"}
#     spot {"MyString"}
#     price {1}
#     picture {"MyString"}
#     genre {"MyString"}
#     comment {"MyString"}
#     user
#   end

#   factory :failure_souvenir, class: Souvenir do
#     name {" "}
#     spot {" "}
#     price { }
#     picture {" "}
#     genre {" "}
#     comment{"美味しい"}
#   end

#   factory :no_picture_souvenir, class: Souvenir do 
#     name {"MyString"}
#     spot {"MyString"}
#     price {1}
#     picture {" "}
#     genre {"MyString"}
#     comment {"MyString"}
#   end
# end

#統合
FactoryBot.define do

  factory :pass_souvenir, class: Souvenir do 
    name {"MyString"}
    spot {"MyString"}
    price {1}
    picture {"MyString"}
    genre {"MyString"}
    comment {"MyString"}
    user
  end

  factory :pass_user, class: User do
    name { "MyString" }
    email { "facker@kencom.com" }
    password {"MyString"}
    password_confirmation {"MyString"}
  end

  factory :user_with_souvenirs do
      transient do
        souvenirs_count { 5 }
      end
  end
  
  after(:create) do |user, evaluator|
    create_list(:souvenir, evaluator.souvenirs_count, user: pass_user)
  end
  
end