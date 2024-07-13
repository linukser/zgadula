#!/usr/bin/crystal

require "random"

# Generate a random number between 1 and 10
secret_number = Random.rand(1..10)

system "clear"

puts "Welcome to the Guessing Game!"
puts
puts "I have selected a number between 1 and 10. Can you guess it?"

loop do
  print "Enter your guess: "
  input = gets

  # Check if the input is a valid integer
  guess = input.try &.to_i?

  if guess.nil?
    puts "Invalid input! Please enter an integer number.\n"
    next
  end

  # Check if the guess is within the valid range
  if guess < 1 || guess > 10
    puts "Invalid number range! Please enter an integer number between 1 and 10.\n"
    next
  end

  if guess == secret_number
    puts "Congratulations! You guessed the correct number: #{secret_number}\n\n"
    break
  elsif guess < secret_number
    puts "Too low! Try again.\n"
  else
    puts "Too high! Try again.\n"
  end
end

