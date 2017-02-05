class Robot 

	def head
		@head
	end

	def arms= (value)
		@arms = value
	end

	attr_reader :legs, :body

	attr_writer :eyes

	attr_accessor :feet

	def assemble
		@legs = "RubyTek Walkers"
		@body = "BurlyBot Frame"
		@head = "SuperAI 9000"
	end

	def diagnostic
		puts @arms
		puts @eyes
	end

end