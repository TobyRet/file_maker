#Write a Ruby program that creates a file called 'hello_from_ruby.txt'
#Make your program ask for input and store that input for later use
#If the user types 'save', make your program save the input into the file
#If the user types 'read', show the content of the file
#If the user types 'introspect' make the program print itself to the screen


def make_file
  file=File.new('hello_from_ruby'.txt)
end

def menu
  puts "Select an option from the menu"
  puts "------------------------------"
  puts "1. Save"
  puts "2. Read"
  puts "3. Introspect"
  user_input(file)
end

def user_input(file)
  response = gets.chomp

  case
  when response == 1.to_s
    puts "Save selected"
  when response == 2.to_s
    puts "Read selected"
  when response == 3.to_s
    puts "Introspect selected"
  else
    puts "That is not an option, fool. Try again. Did you enter a number?"
    menu
  end
end

make_file
intro
