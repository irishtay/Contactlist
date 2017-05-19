
@users = []

def add_name
  puts 'Enter name'
  @users << gets.strip
  print_menu
end

def display_contacts
  @users.each { |name| p name }
  print_menu
end

def menu
  choice = gets.strip.to_i
  case choice
  when 1
    add_name
  when 2
    display_contacts
  when 3
    exit
  else
    puts "Invalid Choice\n\n"
    print_menu
  end
end

def print_menu
  puts "CHOOSE AN OPTION"
  puts "1) Add Name"
  puts "2) Display Users"
  puts "3) Quit"
  menu
end

print_menu
