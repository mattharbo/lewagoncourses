class Task

	attr_reader :done
	attr_accessor :description

	def initialize(description)
		@description = description
		@done = false
	end

	def mark_as_done
		@done = true
	end

end