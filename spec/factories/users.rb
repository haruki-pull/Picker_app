FactoryBot.define do

  factory :user, class: User do
    name { "MyString" }
    email { "facker@kencom.com" }
    password {"MyString"}
    password_confirmation {"MyString"}

    souvenirs {[
      FactoryBot.build(:souvenir, user: nil)
     ]}
  end
  
 factory :pass_user, class: User do
    name { "MyString" }
    email { "facker@kencom.com" }
    password {"MyString"}
    password_confirmation {"MyString"}
    pass_souvenirs
  end

  factory :failure_user, class: User do
    name { "MyString" }
    email { "facker@kencom.com" }
    password {"MyString"}
    password_confirmation {""}
  end

  factory :dup_email_user, class: User do
  name { "MyString" }
  email { "facker@kencom.com" }
  password {"MyString"}
  password_confirmation {"MyString"}
  end
end