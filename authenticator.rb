  users = [
          { username: "mfraz",    password: "password1" },
          { username: "kimfraz",  password: "password2" },
          { username: "kelfraz",  password: "password3" },
          { username: "jfraz",    password: "password4" },
          { username: "silksaki", password: "password5" }
        ]

  def auth_user(username, password, list_of_users)
    list_of_users.each do |user_record|
      if user_record[:username] == username && user_record[:password] == password
        return user_record
      end
    end
    "Incorrect credentials"
  end

  puts "Welcome to the authenticator"
  50.times { print "*"}
  puts
  puts "This is the program that will authenticate the users username and password."
  puts "If the password is correct, you will get back the user object."

  attempts = 1
  while attempts < 4
    print "Username: "
    username = gets.chomp
    print "Password: "
    password = gets.chomp
    authentication = auth_user(username, password, users)
    puts authentication
    puts "Press q to quit or any other key to continue: "
    input = gets.chomp.downcase
    break if input == "q"
    attempts += 1
  end
  puts "You have exceedd the number of attempts" if attempts == 4
