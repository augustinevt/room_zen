FactoryGirl.define do

  factory :house do
    title 'mimisaki'
    address '333 Edo lane'
    association :user
  end



  factory(:user) do
    username('Sasaki Kojiro')
    password('foo')
    password_confirmation('foo')

    factory :user_with_house do
      association :house
    end
  end
end
