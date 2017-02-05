# Get My Number Game
# Written by Khalil

puts "Welcome to 'Get My Number!'"


# Get the player's name, and greet them.
print "What's your name? "
input = gets
name = input.chomp
puts "Welcome #{name}!"

# Store a random number for the player to guess.
puts "I've got a random number between 1 and 100."
puts "Can you guess it?"
target = rand(100) + 1

# Track how many guesses the player has made
num_guesses = 0

# Track whether the player has guessed the answer yet or not
guessed_it = false

# Allow the user to keep guessing until the following condition is met
# If they either run out of guesses or if they've guessed it correctly.
# while num_guesses < 10 && !guessed_it
until num_guesses == 10 || guessed_it 
	puts "You've got #{10 - num_guesses} guess left."

	print "\nMake a guess: "
	guess = gets.to_i
	num_guesses += 1

	if guess < target
		puts "Oops. You guessed too LOW."
	elsif guess > target 
		puts "Oops. You guessed too HIGH."
	elsif guess == target
		puts "Good job, #{name}!"
		puts "You guessed my number in #{num_guesses}."
		guessed_it = true
	end 
end

# if not guessed_it
unless guessed_it
	puts "\nSorry. You didn't get my number. (It was #{target}.)"
end
