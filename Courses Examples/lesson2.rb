# Lesson #2 • Programming Basics

# Agenda:
# Comment exécuter du code ?
# Les variables
# Les fonctions

# ————————————

# Deux façons d’executer du code Ruby:
# 	•	Dans le Terminal avec IRB
# 	•	Depuis un fichier .rb qui est exécuter avec la commande RUBY file.rb

# Les ≠ types de données qui existent en Ruby :
# 	•	String 
# 	•	Fixnum
# 	•	Float
# 	•	Array
# 	•	Boolean 
# 	•	Range

# La concatenation de deux strings en Ruby s’est de cette façon :
# « Matthieu » + « Harbonnier »

# Injecter du code Ruby dans une string avec l’interpolation :

first_name = "Matthieu"
last_name = "Harbonnier"
puts "Je m'appelle #{first_name} #{last_name}"

# Définition d’une méthode avec des paramètres :
# Def hello(name)
# 	return « Je suis #{name} »
# End

def hello(name)
	return "Je suis #{name}"
end

# En appelant cette méthode, on y passe des arguments

puts hello("Mattharbo")