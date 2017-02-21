@user = User.create(email: 'test@test.com',
                    password: 'abc123',
                    password_confirmation: 'abc123',
                    first_name: 'Wesley',
                    last_name: 'Safadao',
                    phone: '5521981887022')

puts '1 User created'

AdminUser.create(email: 'admin@test.com',
                 password: 'abc123',
                 password_confirmation: 'abc123',
                 first_name: 'Admin',
                 last_name: 'User',
                 phone: '5521981887022')

puts '1 AdminUser created'

AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 13.days))
AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 20.days))

puts '3 AuditLogs have been created'

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, overtime_request: 2.5)
end

puts '100 Posts have been created'

