puts "Please enter as many numbers as you want, and then type 'done'"

numbers = []
while
  number = gets.chomp
  break if number == "done"
  numbers << number.to_i
end


