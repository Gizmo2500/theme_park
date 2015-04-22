class Rollercoaster
	def initialize
		@riding = false
	end

	def start
		@riding = true
	end

	def riding?
		@riding
	end

	def finish
		@riding = false
	end
end
