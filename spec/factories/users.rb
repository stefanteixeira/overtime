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
  end

  factory :admin_user, class: 'AdminUser' do
    first_name 'Admin'
    last_name 'User'
    email { generate :email }
    password 'abc123'
    password_confirmation 'abc123'
  end
end
