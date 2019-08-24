class SportCar

	def initialize(color = "white") # ie. constructor
		# Définition des variables d'instance
		# Auxquelles il faut donner des valeurs par défaut
		@engine_started = false
		@color = color
	end

	# EXPOSER UNE VARIABLE D'INSTANCE
	# def color
	# 	return @color
	# end

	# autre façon d'exposer une variable d'instance
	attr_reader :color

	# de la même façon on peut aussi permettre la modification en écriture d'une variable d'instance
	attr_writer :color

	# Pour faire les deux en une seule ligne 
	# >>>>>>>>> attr_accessor :color

	def start_engine
		@engine_started = true
	end

	def stop_engine
		@engine_started = false
	end

	def pain(newcolor)
		@color = newcolor
	end

	private

	# ici se trouvent toutes les méthodes de l'interface privée de la classe

end