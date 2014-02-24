#Write a Ruby program that creates a file called 'hello_from_ruby.txt'
#Make your program ask for input and store that input for later use
#If the user types 'save', make your program save the input into the file
#If the user types 'read', show the content of the file
#If the user types 'introspect' make the program print itself to the screen


# get text from user
def add_input
  puts "Welcome to the file maker"
  puts "Please enter the text you would like to add to the file"
  input = gets.chomp
end

# display menu options. Record user option.
def menu
  puts "Select an option from the menu"
  puts "------------------------------"
  puts "1. Save"
  puts "2. Read"
  puts "3. Introspect"
  response = gets.chomp
end

# redirect user to correct method based on option chosen.
def decision(user_choice, file_name = 'hello_from_ruby.txt', user_input)
  if user_choice == 1.to_s
    save(file_name, user_input)
  elsif user_choice == 2.to_s
    read(file_name)
  elsif user_choice == 3.to_s
    introspect(file_name)
  else
    puts "That is not an option, fool. Try again. Did you enter a number?"
    menu
  end
end

# save option
def save(file_name, user_input)
  puts "Save selected"
  file = File.new(file_name, 'w')
  File.open(file_name, 'a') do |file|
    file.puts user_input
      puts "Content saved to '#{file_name}'."
    end
  menu
end

# read option
def read(file_name)
  puts "Read selected"
  File.open(file_name, 'r') do |file|
    file.each_line do |line|
      puts "#{line}"
    end
  end
  menu
end

# introspect option
def introspect(file_name)
  puts "Introspect selected"
  file_name = 'file_maker.rb'
   File.open(file_name, 'r') do |file|
    file.each_line do |line|
      puts "#{line}"
    end
  end
end

file_name = 'hello_from_ruby.txt'
user_input = add_input
user_choice = menu
decision(user_choice,file_name, user_input)

