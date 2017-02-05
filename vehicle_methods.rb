def accelerate 
	puts "Stepping on the gas."
	puts "Speeding up."
end

def sound_horn
	puts "Pressing the horn button."
	puts "Beep beep!"
end

def use_headlights(brightness = "low-beam") 
	puts "Turning on #{brightness} headlights."
	puts "Watch out for the deer!"
end

# sound_horn
# accelerate
# use_headlights
# use_headlights("hi-beam")

# Optional parameters by assigning default values.
# Optional parameters MUST be listed AFTER all required parameters
# So cannot have:
# def order_soda(size = "medium", flavour, quantity = 1)
def order_soda(flavour, size = "medium", quantity = 1)
	if quantity == 1 
		plural = "soda"
	else
		plural = "sodas"
	end
	puts "#{quantity} #{size} #{flavour} #{plural}, coming right up!"
end

# order_soda("orange")
# order_soda("cola", "small")
# order_soda("grape", "large", 3)

def mileage(miles_driven, gas_used)
	if gas_used == 0
		# Explicit use of return necessary
		return 0.0
	end
	# Don't have to specify return keyword
	# return miles_driven/gas_used
	# Implicit return:
	miles_driven/gas_used
end 

trip_mileage = mileage(400, 12)
puts "You got #{trip_mileage} MPG on this trip."

lifetime_mileage = mileage(11432, 366)
puts "This car averages #{lifetime_mileage} MPG."

#puts "A car with 0 fuel has #{mileage(0,0)} MPG."
