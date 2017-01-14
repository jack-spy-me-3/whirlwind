# number 1
foods = []
5.times do
  puts "Please enter a favorite food: "
  food = gets.chomp
  foods << food
end

foods.each do |food|
  puts "I love #{food}! Mmm."
end

foods.each_with_index do |food, index|
  puts "#{index + 1}. #{food}"
end

# number 2

count = 0

11.times do
  puts count
  count += 1
end

result = false
if result != true
  puts "Result is not true"
end

unless result == true
  puts "Result is not true"
end

sam = ["hamburgers", "cookies", "crepes", "sandwich", "scrambled egg", "pancake", "waffle", "french toast", "pulled pork", "sinigang", "lumpia", "chicken adobo"]
sally = ["English", "Tagalog", "Spanish", "French", "Japanese", "Mandarin"]

if sam.length > 10 && sally.length > 5
  puts "They should date"
else
  puts "They should not date"
end

if sam.include?("crepes") && sally.include?("French")
  puts "They should get married!"
else
  puts "They should not get married."  
end

# number 3
people = []
2.times do
  person = {}
  email = false
  puts "Enter a first name:"
  person[:first_name] = gets.chomp
  puts "Enter a last name:"
  person[:last_name] = gets.chomp
  until correct_email_format # until correct_email_format == true
    puts "Enter an email address:"
    email_address = gets.chomp
    if email_address.include?("@") && email_address.end_with?(".com")
      person[:email] = email_address
      correct_email_format = true
    end
  end

  person[:account_number] = rand.to_s[2..11]
  people << person
end
people.each do |person|
  puts "First Name: #{person[:first_name]}"
  puts "Last Name: #{person[:last_name]}"
  puts "Email: #{person[:email]}"
  puts "Account Number: #{person[:account_number]}"
end

puts "Enter Account Number: "
acct_number = gets.chomp
people.each do |person|
  if person[:account_number] == acct_number
    puts "First Name: #{person[:first_name]}"
    puts "Last Name: #{person[:last_name]}"
    puts "Email: #{person[:email]}"
    break #stops from looping through the array after printing out the information, since account number should be unique
  end
end

# number 4

names = []

while true
  puts "Enter a name: (type 'done' to finish)"
  input_name = gets.chomp
  if input_name == "done"
    break
  else
    names << input_name
  end
end

names.shuffle!

until names.length == 0
  if names.length == 3
    group = names.pop(3)
    # group = names.shift(3)
  else
    group = names.pop(2)
    # group = names.shift(2)
  end

  # just a note here: either pop or shift would work. Pop removes from the back of the array, shift removes from the front of the array. I left shift commented out.

  puts "Group: #{group.join(', ')}"
end