
require_relative 'crud'

users = [
  {username: "mashrur", password: "password1"},
  {username: "jack", password: "password2"},
  {username: "arya", password: "password3"},
  {username: "jonsnow", password: "password4"},
  {username: "heisenberg", password: "password5"},
]

hashed_users = Crud::create_secure_users(users)

welcome_msg = "Welcome to the authenticator"
puts welcome_msg
welcome_msg.length.times { print "-" }
puts
puts "This program will take input from the user and compare password."
puts "If password is correct, you will get back the user object."

attempts = 1
while attempts < 4
  print "Username: "
  username = gets.chomp
  print "Password: "
  password = gets.chomp
  
  auth = Crud::authenticate_user(username, password, hashed_users)
  puts auth
 
  puts "Press n to quit or any other key to continue: "
  input = gets.chomp.downcase
  break if input == "n"
 
  attempts += 1 
end

puts "You have exceeded the number of attempts" if attempts == 4
