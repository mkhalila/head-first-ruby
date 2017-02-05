class Animal

	# Can get Ruby to automatically write a setter for name:
	# attr_writer :name
	# So don't have to write all this:
	# def name= (new_name)
		# Instance variable/field
		# @name = new_name
	# end

	# Can get Ruby to automatically write a getter for name:
	# attr_reader :name
	# So don't have to write all this:
	# def name
		# @name
	# end

	# Or we can create getter and setter for both in ONE line:
    # But we won't do this because we want to validate the setterss
    # attr_accessor :name, :age
	attr_reader :name, :age

	def name= (new_name)
		if new_name == ""
			# puts "Name can't be blank!"
			# Like throwing a Java Exception
			raise "Name can't be blank!"
		end 
		@name = new_name
	end

	def age= (new_age)
		if new_age < 0
			# puts "An age of #{new_age} isn't valid!"
			raise "An age of #{new_age} isn't valid!"
		end
		@age = new_age
	end

	def talk 
		puts "#{@name} says Bark!"
	end

	def move (destination) 
		puts "#{@name} runs to the #{destination}."
	end

	def report_age
		puts "#{@name} is #{@age} years old."
	end

	# Alternatively Ruby can auto define both getter and setter
	# attr_accessor :age

	# So we don't need the following two methods:

	# def age= (new_age)
	#	@age = new_age
	# end

	# def age 
	#	@age
	# end

end

class Dog < Animal

	def to_s 
		"#{@name} the dog, age #{@age}"
	end
	
end

class Bird < Animal
	
	def talk
		puts "#{@name} says Chirp! Chirp!"
	end

	# def move (name, destination)
	# 	puts "#{name} flies to the #{destination}."
	# end

end

class Cat < Animal
	
	def talk
		puts "#{@name} says Meow!"
	end

	# def move (name, destination)
	# 	puts "#{name} runs to the #{destination}."
	# end

end

class Armadillo < Animal

	def move (destination)
		puts "#{@name} unrolls!"
		# Duplicates code from super method
		# puts "#{@name} runs to the #{destination}."
		#So just call super method instead
		super # (destination)
	end

end

# fido = Dog.new
# fido.make_up_name
# rex = Dog.new
# rex.make_up_name

# fido.talk
# rex.move("food bowl")

# bird = Bird.new
# dog = Dog.new
# dog.make_up_name
# cat = Cat.new

# bird.move("bird", "tree")
# dog.talk
# bird.talk("bird")
# cat.move("cat", "house")

# dog.move("yard")
# dog.make_up_age
# dog.report_age

# fido = Dog.new
# fido.name = "Fido"
# fido.age = 2

# rex = Dog.new
# rex.name = "Rex"
# rex.age = 3

# fido.report_age
# rex.report_age

# joey = Dog.new 
# joey.name = ""
# joey.age = -1
# joey.report_age

whiskers = Cat.new
whiskers.name = "Whiskers"
whiskers.talk

polly = Bird.new
polly.name = "Polly"
polly.talk

ross = Armadillo.new
ross.name = "Ross"
ross.move("Museum")

lucy = Dog.new
lucy.name = "Lucy"
lucy.age = 4

rex = Dog.new
rex.name = "Rex"
rex.age = 2

# Print to_s method
puts lucy, rex

puts Dog.superclass
puts Animal.superclass