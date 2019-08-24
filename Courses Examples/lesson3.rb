# Lesson #3 • Flow, Conditionals & Arrays

# Flux d’execution d’un programme est de haut en bas (ligne par ligne)

# ______________________________________ Conditional ______________________________________

# #IF
# On peut modifier le flux d’execution avec des conditions => if statement

minor = 17
major = 32

if minor <= 18
	puts "condition normale"
end

# Il y a l’inverse de la condition => if !condition

# Ce qui est strictement équivalent à => unless condition
unless minor <= 18
	puts "unless statement"
end

# Possibilité d’inliner les conditions uniquement si elles ne dépassent pas une ligne

puts "inline condition normale avec un if" if minor <=18
puts "inline unless statement" unless major <=18

# Condition ternaire = écrire un if…else en une seule ligne
# idem si ça ne dépasse pas une ligne de code

if major <= 18
	puts "sans condition termaire vraie"
else
	puts "sans condition terminaire fausse"
end

# est strictement équivalent à :

major <= 18 ? (puts "avec condition ternaire vraie") : (puts "avec condition terminaire fausse")

# Elseif permet de mettre plus de condition
# On peut accumuler les else if statetements - attention à l’ordre dans lequel ils sont déclarés !

# Case permet de réécrire les else if d’une autre manière

# Les opérateurs logiques
# • AND => &&
# • OR => ||
# • …

# Sur une fonction booléenne
def open?(hour)	
	return (hour >= 9 && hour < 12) || (hour >= 14 && hour < 19)
end

def boolean_trad(bool)
	bool==true ? answer = "Le magasin est ouvert" : answer = "Le magasin est fermé"
	return answer
end

puts "Quelle heure est-il ?"
print "> "
user_hour = gets.chomp.to_i

puts boolean_trad(open?(user_hour))

# ______________________________________

#WHILE
# Exécution de code tant que la condition est vérifiée

max_bonjour = 3

bonjour=0

while bonjour < max_bonjour
	puts "Salut Matthieu"
	bonjour += 1
end

# Une autre façon d’écrire un while si la condition est fausse 
# until condition

# Equivalent à while !condition

# ______________________________________

# FOR
# Une autre façon d’écrire les boucles avec un nombre fini de boucles

for i in 1...11
	puts "#{i} • Bonjour"
end

# ______________________________________ Arrays ______________________________________

# Declaration de tableau
teams = ["psg", "barca"]

# On peut aussi déclarer un tableau de la manière suivante :
teams_2 = %w(psg barca)

# Pour afficher un tableau sans traitement 
p teams

# Qui est équivalent à :
puts teams.inspect

# Créer une nouvelle entrée dans un tableau :
teams << "vafc"
# ou alors il existe aussi la méthode push

# Pour parcourir tous les éléments d'un tableau, on peut utiliser une boucle FOR
# alternative avec la synthaxe idiomatique :
teams.each_with_index do |team,index|
	puts "L'équipe numéro #{index + 1} est le #{team}"
end

# Equivalent à la synthaxe suivante en inline (/!\ pas plus d'une ligne de code) :
teams.each {|team| puts "L'équipe est le #{team}"}