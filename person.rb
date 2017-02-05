class Person 

	def greet_by_name (name)
		# puts "Hello!"
		"Hello, #{name}!"
	end

end

class Friend < Person

	def greet_by_name (name)
		# Can leave out the name argument if parameters are the same 
		# basic_greeting = super(name)
		basic_greeting = super
		puts "#{basic_greeting} Glad to see you!"
	end

end

person = Person.new
person.greet_by_name("Aishah")

friend = Friend.new
friend.greet_by_name("Aishah")