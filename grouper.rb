students = []

while true
  puts "Please enter a student's name. Enter 'done' when you're done."
  student = gets.chomp
  break if student == "done"
  students << student
end

students.shuffle!

while students.any?
  if students.count == 3
    group = students.pop(3)
  else
    group = students.pop(2)
  end
  puts "Group: #{group.join(' ')}"
  puts
end