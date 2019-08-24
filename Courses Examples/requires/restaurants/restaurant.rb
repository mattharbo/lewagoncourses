require_relative "chief"

class Restaurant

	attr_accessor :name, :city, :clients, :chief, :chief_exp

	def initialize(name, city, chief, chief_exp)
		@name, @city = name, city
		@clients = []
		@chief = Chief.new(chief, chief_exp, self)
	end

	def print_clients
		@clients.each_with_index do |client, index|
			puts "Le client numéro #{index+1} est #{client}"
		end	
	end

end