require 'bcrypt'
require 'io/console'

def create_hash_digest(password)
  BCrypt::Password.create(password)
end

def verify_hash_digest(password)
  BCrypt::Password.new(password)
end

def authenticate_password(password)
  verify_hash_digest(password)
end

loop do
  puts "Do you want to enter a password? y/n: "
  answer = gets.chomp
  if answer == "y"
    print "Enter a password: "
    my_password = create_hash_digest(STDIN.noecho(&:gets).chomp)
    puts
    puts my_password
    print "Enter your password again: "
    verified_password = create_hash_digest(STDIN.noecho(&:gets).chomp)
    puts
    puts verified_password
    if authenticate_password(my_password) == authenticate_password(verified_password)
      puts
      puts "Yay! Your password matches!"
    else
      puts "Boo! You got it wrong!"
    end
  else
    break
  end
end
