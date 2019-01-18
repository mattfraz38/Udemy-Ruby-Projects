# def simple_calculator(x, y, z)
#   if z == "+"
#     x + y
#   elsif z == "-"
#     x - y
#   elsif z == "*"
#     x * y
#   elsif z == "/"
#     x / y
#   elsif z == "%"
#     x % y
#   else
#     "Oops! You made a mistake! What do you want to do?"
#   end
# end
def add(num_one, num_two)
  num_one + num_two
end

def subtract(num_one, num_two)
  num_one - num_two
end

def multiply(num_one, num_two)
  num_one * num_two
end

def divide(num_one, num_two)
  num_one / num_two
end

def modulo(num_one, num_two)
  num_one % num_two
end

puts "Simple Calculator"
25.times { print "-" }
puts
puts "Choose an operation: + - * / %"
operator = gets.chomp
puts "Choose a fist number to \"#{operator}\":"
num_one = gets.chomp.to_i.to_f
puts "Choose a second number to \"#{operator}\":"
num_two = gets.chomp.to_i.to_f
25.times { print "-" }
puts
# puts "#{num_one} #{operator} #{num_two} = #{simple_calculator(num_one, num_two, operator)}"
print "The answer is: "
case operator
when "+"
  puts add(num_one, num_two)
when "-"
  puts subtract(num_one, num_two)
when "*"
  puts multiply(num_one, num_two)
when "/"
  puts divide(num_one, num_two)
when "%"
  puts modulo(num_one, num_two)
end
