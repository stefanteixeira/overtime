@user = User.create(email: 'test@test.com', password: 'abc123', password_confirmation: 'abc123', first_name: 'Wesley', last_name: 'Safadão')

puts '1 User created'

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id)
end

puts '100 Posts have been created'
