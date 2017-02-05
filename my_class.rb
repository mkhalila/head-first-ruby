class MyClass
	
	def my_attribute=(new_value)
		@my_attribute = new_value
	end

	def my_attribute
		@my_attribute
	end

end

my_instance = MyClass.new

my_instance.my_attribute = "Assigned via attribute writer."
puts my_instance.my_attribute

my_instance.my_attribute = "Oh look I got re-assigned."
puts my_instance.my_attribute
