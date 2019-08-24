class Patient

	attr_reader :name, :cured
	attr_accessor :id, :room # => Pas besoin de créer une variable dans initialize car elle le sera directement

	def initialize(attributes = {})
		@name = attributes[:name]
		@cured = attributes[:cured]
	end

	def cure!
		@cured = true
	end

end