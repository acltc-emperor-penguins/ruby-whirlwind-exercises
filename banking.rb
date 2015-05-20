people = []

2.times do
  puts "Please enter a first name:"
  first_name = gets.chomp
  puts "Please enter a last name:"
  last_name = gets.chomp
  while true
    puts "Please enter an email:"
    email = gets.chomp
    unless email.include?("@") && email.end_with?(".com")
      puts "Please enter a valid email"
    else
      break
    end
  end
  account_number = ""
  3.times do
    account_number += rand(10).to_s
  end
  people << { first_name: first_name, last_name: last_name, email: email, account_number: account_number }
end

# person == { first_name: "Joan", last_name: "Johnson", email: "jj@juno.com", account_number: 1234567890}

people.each do |person|
  puts "FIRST NAME: #{person[:first_name]}"
  puts "LAST NAME: #{person[:last_name]}"
  puts "EMAIL: #{person[:email]}"
  puts "ACCT #: #{person[:account_number]}"
  puts
end

while true
  puts "Please enter an account number:"
  account_number = gets.chomp
  people.each do |person|
    if account_number == person[:account_number]
      puts "FIRST NAME: #{person[:first_name]}"
      puts "LAST NAME: #{person[:last_name]}"
      puts "EMAIL: #{person[:email]}"
      puts "ACCT #: #{person[:account_number]}"
      puts
    end
  end
end
