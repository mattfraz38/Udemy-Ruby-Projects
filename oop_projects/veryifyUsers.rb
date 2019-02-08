require 'bcrypt'

my_password = BCrypt::Password.create("my_password")
puts my_password

my_password = BCrypt::Password.new(my_password)
if my_password == "my_password"
  puts "Correct credentials!"
  puts my_password
else
  puts "Incorrect credentials"
end
