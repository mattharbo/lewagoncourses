# Lesson #11 • Food delivery (Day 1 & 2)

# Framework MVC avec plusieurs modèles qui ont des relations entre eux

# ______________________________________ Example de l'hopital ______________________________________

# Avec les modèles :
# - Chambre
# - Patient

# "Une chambre a une connaissance des patients et inversement un patient a connaissance de sa chambre"

# Le patient a deux variables d'instance => son nom et un booléen qui dit s'il est guéri ou non

# ==> on va privilégié l'initialisation d'une instance en passant un hash dans la méthode initialize
# elle permet de passer autant de valeur qu'on souhaite par le hash
# on va la préférer lorsqu'on va sérialiser / désérialiser

# La chambre a une capacité maximale d'accueil et un listing de patients matérialisé dans un tableau



require_relative 'requires/hospital/patient'
require_relative 'requires/hospital/room'

# Si je créé une chambre 

myroom = Room.new(capacity: 2)

# Et deux patients 

patient1 = Patient.new(name: "Matthieu")
patient2 = Patient.new(name: "Clara")

# Comment je fais pour affecter un patient à une chambre ?

myroom.add_patient(patient1)
myroom.add_patient(patient2)

p patient1