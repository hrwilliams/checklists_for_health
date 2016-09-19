FactoryGirl.define do
  factory(:week) do
    date('2016-09-18')
    user_id(1)
  end

  factory :user do
    email "user1@user.com"
    password "password"
    id(1)
  end
end
