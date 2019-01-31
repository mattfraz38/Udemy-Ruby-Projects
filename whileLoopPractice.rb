first_name = ""
user_input = nil
while user_input != ""
  puts "What is your first name?"
  first_name = gets.chomp
  puts "Nice to meet you #{first_name}!"
  puts "What is your last name?"
  last_name = gets.chomp
  puts "Cool name #{first_name} #{last_name}!!"
  puts "-" * 30
  puts "Try again? y/n"
  input = gets.chomp
  break if input == "y"
end
