# Lesson #4 • Iterators & Blocks

# On a déjà rencontrer des blocks lorsqu'on a utilisé la methode each sur un tableau

teams = %w(psg valenciennes lille lyon)

teams.each_with_index do |team,index|
	puts "#{index + 1} #{team.capitalize}"
end

# Un BLOCK est une sorte de méthode sans nom => c'est une méthode anonyme

# ______________________________________ Map ______________________________________
# On utilise la méthode map lorsqu'on a un tableau en entrée et qu'on veut un tableau en sortie
# les deux prochaines méthodes vont donc renvoyer un tableau en sortie

def capitalize_array_with_map(array)
	return array.map do |team|
		team.capitalize
	end
end

puts "Test 1er méthode : #{capitalize_array_with_map(teams)}"

# Fonction qui est strictement équivalente à :
# la différence est le fait que la 2eme soit inlinée par rapport à la premiere ET SANS return

def capitalize_array_with_map_2(array)
	array.map {|team| team.capitalize}
end

puts "Test 2eme méthode : #{capitalize_array_with_map_2(teams)}"

# ______________________________________ Count ______________________________________
# Une autre méthode d'énumérable la méthode count
# la méthode renvoie vrai ou faux

teamcontainings = teams.count do |team|
	team.include?("s")
end

puts teamcontainings

# qui est strictement équivalent à la synthaxe suivante en inline : 

puts (teams.count {|team| team.include?("s")})

# ______________________________________ Select ______________________________________
# La méthode SELECT va prendre un tableau en entrée en ressortir un tableau mais pas avec le même nombre d'éléments!
# Là ou la méthode .MAP par exemple donne en sortie exactement le même nombre d'éléments
# comme pour la méthode .COUNT, le .SELECT évalue par vraie ou faux

def element_containing_s_with_select(arg_array)
	arg_array.select {|element| element.include?("s")}
end

p element_containing_s_with_select(teams)

# parenthèse dans le cours : si on défini une méthode qui prend plusieurs argument
# on peut définir une valeur par défaut pour chacun des éléments 
# ils ne seront alors plus obligatoire dans l'appel de la fonction 
# exemple : def function(nom = "matthieu")

# ______________________________________ Reduce ______________________________________
# On utilise ce pattern lorsqu'on a un tableau en entrée et qu'on souhaite un seul élémént en sortie
# On veut le réduire à une seule valeur
# Attention : la méthode Reduce (à la différence des autres) prend un argument de départ en entrée
# Ainsi que deux paramétres dans le block : memo et element
# Memo va prendre par défaut la valeur passer en paramètre de la méthode
# Puis va être modifié à chaque itération

# On reprend l'exemple de la moyenne des notes (ou on va incrémenter Memo)

grades = [12, 19, 17, 11]

totalgrades = grades.reduce(0) do |memo, element|
	memo += element
end

totalgrades_inline = grades.reduce(0) {|memo, element| memo += element}

puts totalgrades_inline/(grades.length)

# ______________________________________ Création de méthodes avec Block ______________________________________

# Comment faire pour coder des nous-même des méthodes qui prennent des Blocks ?
# Disclaimer : c'est qqc d'avancée ! :) 
# => C'est peu utilisé dans la pratique mais c'est important pour la compréhension

# On appele le block avec le mot clé YIELD

# /!\ la méthode exécute le code qui est passé en argument dans le block à l'appel de la fonction
# Ce bout de code peut lui aussi prendre des paramètre (comme tout bout de code)

def greets(name)
	yield(name.capitalize)
end

greets("Matthieu") do |thename|
	puts "Bonjour #{thename}"
end

greets("Matthieu") do |thename|
	puts "#{thename} Zouick"
end
