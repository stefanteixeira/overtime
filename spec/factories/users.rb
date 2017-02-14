FactoryGirl.define do
  sequence :email do |n|
    "test#{n}@test.com"
  end

  factory :user do
    first_name 'Wesley'
    last_name 'Safadao'
    email { generate :email }
    password 'abc123'
    password_confirmation 'abc123'
    phone '5555555555555'
  end

  factory :admin_user, class: 'AdminUser' do
    first_name 'Admin'
    last_name 'User'
    email { generate :email }
    password 'abc123'
    password_confirmation 'abc123'
    phone '5555555555555'
  end

  factory :non_authorized_user, class: 'User' do
    first_name 'Non'
    last_name 'Authorized'
    email { generate :email }
    password 'abc123'
    password_confirmation 'abc123'
    phone '5555555555555'
  end
end
