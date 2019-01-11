def say_hello(thing_to_say)
  puts thing_to_say
end

say_hello "Hello Matt's World"

first_name = "Matthew"
last_name = "Frazier"
puts first_name + " " + last_name

puts "My first name is #{first_name} and my last name is #{last_name}."

full_name = "#{first_name} #{last_name}"

puts "My name is #{full_name}."
puts "My new name is #{full_name.sub(first_name, 'Matt')}."
first_name.sub!("Matthew", "Matt")
puts "#{first_name} is what I prefer to go by."

# sentence = "Welcome to the jungle"
# puts sentence
# # puts sentence.sub("the jungle", "utopia")
# sentence.sub!("the jungle", "utopia")
# puts sentence

puts "What is your first name?"
user_first_name = gets.chomp
puts "Thank you #{user_first_name}, we look forward to working with you."

puts "#{user_first_name}, please type a number."
user_first_number = gets.chomp
puts "Thank you #{user_first_name}, please type one more number."
user_second_number = gets.chomp
user_numebers_product = user_first_number.to_i * user_second_number.to_i
puts "Thank you #{user_first_name}, the product of #{user_first_number} and #{user_second_number} is #{user_numebers_product}!"
