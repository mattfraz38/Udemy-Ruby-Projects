reply = "y"
while reply == "y"
  print "Have you lifted yet today? y/n: "
  answer = gets.chomp
  if answer == "y"
    puts "Yeah! Muscles!!"
  elsif answer == "n"
    print "Are you going to go? y/n: "
    going_or_not_answer = gets.chomp
    if going_or_not_answer == "y"
      puts "Get swoll!!"
    else
      puts "Get your ass to Mars!!"
    end
  end
  50.times { print "*" }
  puts
  print "Continue talking to the coach? y/n: "
  finished = gets.chomp
  break if finished == "n"
end
