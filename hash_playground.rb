
# Hash a.k.a dictionary

my_hash = { nameOne: "Matt", nameTwo: "Saki" }
my_details = {'name' => 'Matt', 'favcolor' => 'blue'}

my_hash.each do |k, v|
  puts "The key is #{k} and the value is #{v}!"
end

my_details.each do |k, v|
  puts "Hello the key is #{k} and the value is #{v}"
end
