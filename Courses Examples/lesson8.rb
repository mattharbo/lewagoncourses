# Lesson #8 • Classes & Instances

# Intro à la programmation orientée objet

# ______________________________________ Architecture logiciel ______________________________________

# C'est un paradigme de language de développement

# Si on doit résumer l'OOP ce sera par deux concepts :
# - la donnée (qqc de statique) qui a un état
# - le comportement (les méthodes qu'on appelle sur les données => dynamisme)

# OOP (object oriented programation) = state + behavior

# une classe (class) = le moule à gateau qui est unique
# une instance (instance) = ce qu'on va produire avec la classe

# state => variable d'instance qui sont par défaut cachée (hidden)
# comportement => méthode d'instance

# ______________________________________ Regles ______________________________________

# 1 class = 1 fichier
# le fichier d'une classe s'inscrit en minuscule et avec des underscores => lower_snake_case
# le nom d'une classe en Ruby s'écrit avec une majuscule et sans espaces => UpperCamelCase

# ______________________________________ Création de classes ______________________________________

# Pour appeler une class dans un programme, il faut faire un 

require_relative "requires/sport_car"

# Et on crée une instance de classe en faisant

my_first_car = SportCar.new("red")

p my_first_car

# A chaque fois qu'on fait un new sur une class ça appele par défaut la méthode initialize de cette dernière afin de créer l'instance
# Cette méthode initialize est également appelée un CONSTRUCTOR

# C'est dans la méthode initialize qu'on définie généralement les variables d'instance

my_second_car = SportCar.new("blue")

p my_second_car

# On peut demande une valeur de variable d'instance à la création de cette derniere

# il faut que la méthode NEW prenne autant d'arguments que la méthode intialize prend de paramètres

# >>>>>>>>>>>>> voir les créations d'instances ci-dessus <<<<<<<<<<<<<<<<<<

# On peut également mettre une valeur par défaut à une variable d'instance depuis la méthode iniitialize de la class
# ce qui empêche de donner cette valeur à la création de l'instance

p my_third_car = SportCar.new # elle sera blanche

# ______________________________________ Acceder aux informations des var. instance ______________________________________

# Par défaut tout est caché
# Donc il faut créer des méthodes d'instance qui exposent les variables d'instance

my_fourth_car = SportCar.new("purple")

p my_fourth_car

puts my_fourth_car.color

my_fourth_car.start_engine
p my_fourth_car

# On peut également créer des méthodes d'instance qui prennent des arguments

my_fourth_car.pain("yellow") # ==> elle devient jaune
p my_fourth_car

# ______________________________________ Interface d'une classe ______________________________________

# C'est l'ensemble des méthodes qu'on peut appeler sur une instance de cette classe

# D'autres méthodes sont définies dans la classe et réservées à la manipulation de variables internes à la classe
# => l'interface privée 





