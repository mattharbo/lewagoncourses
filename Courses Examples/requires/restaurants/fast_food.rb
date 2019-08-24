require_relative "restaurant"

class FastFood < Restaurant

	attr_accessor :preparation_time

	def initialize(name, city, preparation_time)
		super(name, city, chief, chief_exp)
		@preparation_time = preparation_time
	end

	def print_clients
		puts "----#{@name}----"
		super
		puts "----------------"
	end

end