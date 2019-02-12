module Crud
  require 'bcrypt'
  puts "module Crud activated"
  # attr_accessor :password

  # def Initialize(password)
  #   @password = password
  # end

  # users = [
  #   { username: "mfraz",    password: "password1" },
  #   { username: "kimfraz",  password: "password2" },
  #   { username: "kelfraz",  password: "password3" },
  #   { username: "jfraz",    password: "password4" },
  #   { username: "silksaki", password: "password5" }
  # ]

  def self.create_hash_digest(password)
    BCrypt::Password.create(password)
  end
# This is not being used
  def self.verify_hash_digest(password)
    BCrypt::Password.new(password)
  end

  def self.create_secure_users(list_of_users)
    list_of_users.each do |user_record|
      user_record[:password] = create_hash_digest(user_record[:password])
    end
    list_of_users
  end

  # new_users = create_secure_users(users)
  # puts new_users

  def self.authenticate_user(username, password, list_of_users)
    list_of_users.each do |user_record|
      if user_record[:username] == username && verify_hash_digest(user_record[:password]) == password
        puts "Valid credentials"
        return user_record
      end
    end
    "Incorrect credentials"
  end

end

new_password = create_hash_digest("password1")
# puts new_password == "password1"

# puts authenticate_user("mfraz", "password1", new_users)
# YOU NEED TO PUT THE PASSWORD INTO AN ARRAY!!
# Don't veryify and hash in the same line
# if statement comparing user imput to hashed array


# password_arr = []
# verified_password = []
# # mfraz = User.new
# puts "What is your password? "
# # mfraz.password = gets.chomp
# my_password = create_hash_digest(gets.chomp)
# password_arr << my_password
# verified_password << verify_hash_digest(password_arr[0])
# puts verified_password[0]
# puts password_arr[0]
# puts verified_password[0] == password_arr[0]
# puts = "Enter again: "
# my_password = gets.comp
# p create_hash_digest(mfraz.password)

# my_password = BCrypt::Password.new(my_password)
# if my_password == "my_password"
#   puts "Correct credentials!"
#   puts my_password
# else
#   puts "Incorrect credentials"
# end
