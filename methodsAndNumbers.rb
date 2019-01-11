def target_number(num)
  x = rand(0..20)
  num.times do |x|
    if x % 13 == 0
      puts "#{x} / 13 = #{x / 13}!"
    else
      puts x
    end
  end
end

puts "Type a number"
num = gets.chomp.to_i
20.times { print "-" }
puts
target_number(num)
