class Room

	attr_accessor :id

	def initialize(attribute = {})
		@capacity = attribute[:capacity]
		@patients = []
	end

	def full?
		@capacity == @patients.length ? (return true) : (return false)
	end

	def add_patient(patient)
		if self.full? == true
			# fail.Exception, "Room is full"
			return false
		else
			@patients << patient
			patient.room = self
		end
	end
end