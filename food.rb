foods = []
puts "Please enter your five favorite foods:"
5.times do
  foods << gets.chomp
end

foods.each_with_index do |food, index|
  puts "#{index + 1}. #{food.upcase}"
  # puts counter.to_s + ". " + food
end