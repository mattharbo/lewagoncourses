# Lesson #5 • Hash & Symbols

# Revisions
# Ecrire un programme qui affiche la liste des étudiants aved leur age

students = %w(gabriel alessandro françois matthieu)
ages = %w(27 32 28 30)

students.each_with_index do |student, index|
	puts "#{student.capitalize} >> #{ages[index].to_i}"
end

puts "-------"

# Ce programme est très critiquable car la structure de données n'est pas stable du tout
# Si on ajoute un étudiant sans lui affecter d'age, il va y avoir un problème de display à l'appel des informations
# (encore plus vrai si plusieurs étudiants sont ajoutés)

# On voudrait pouvoir accéder à l'age d'un étudiant en passant en paramètre sa valeur (ie. matthieu)
# => Les hashs !!!! :D

# ______________________________________ Hash ______________________________________

# Un hash peut être assimilé à un dictionnaire de mots avec une définition
# une notion de clé unique pour laquelle on affiche une valeur

# Structure d'un hash
students = {
	"gabriel" => 27,
	"alessandro" => 32,
	"françois" => 28,
	"matthieu" => 30
}

# Dans un hash, il n'y a pas de notion d'index car il n'y a pas de notion d'ordre

# On manipule donc un élément par sa clé

puts "L'age de Matthieu est #{students["matthieu"]}"

puts "-------"

# Comment on liste les éléments d'un hash ? 
# Un hash est un énumérable, il accepte donc toutes les méthodes qui fonctionnent sur les énumérables

students.each do |key, value|
	puts "#{key} >> #{value}"
end

puts "-------"

# On peut imbriquer des hashs si on a plusieurs niveaux d'information

students2 = {
	"gabriel" => {
		"age" => 27,
		"position" => "Data analyst"
		},
	"alessandro" => {
		"age" => 28,
		"position" => "Engineer"
		},
	"françois" => {
		"age" => 28,
		"position" => "Account exe"
		},
	"matthieu" => {
		"age" => 30,
		"position" => "Senior product manager"
		}
}

students2.each do |key, student|
	puts "#{key} est un #{student["position"]}"
end

puts "-------"

students2.each {|key, student| puts "#{key.capitalize} est un #{student["position"]}"}

puts "-------"

# On utilise un tableau lorsqu'il y a un ordre
# On utilise un hash lorsqu'il n'y a pas de notion d'ordre

# ______________________________________ Ajouter une clé dans un hash ______________________________________

students3 = {}

students3["Matthieu"] = 30

puts students3

puts "-------"

# on peut réaffecter autant qu'on veut les valeur à la volée

# ______________________________________ Symbol vs. Key ______________________________________

france_team_players = {
	"Mbappe" => {
		"firstname" => "Kylian",
		"position" => "FW",
		"number" => 10
	},
	"Kante" => {
		"firstname" => "N'Golo",
		"position" => "MD",
		"number" => 13
	},
	"Varane" => {
		"firstname" => "Raphael",
		"position" => "DF",
		"number" => 4
	}
}

# Est équivalent à :

france_team_players = {
	"Mbappe" => {
		:firstname => "Kylian",
		:position => "FW",
		:number => 10
	},
	"Kante" => {
		:firstname => "N'Golo",
		:position => "MD",
		:number => 13
	},
	"Varane" => {
		:firstname => "Raphael",
		:position => "DF",
		:number => 4
	}
}

# qui est également équivalent à :

france_team_players2 = {
	"Mbappe" => {
		firstname: "Kylian",
		position: "FW",
		number: 10
	},
	"Kante" => {
		firstname: "N'Golo",
		position: "MD",
		number: 13
	},
	"Varane" => {
		firstname: "Raphael",
		position: "DF",
		number: 4
	}
}

puts "Le prénom de Mbappe est #{france_team_players2["Mbappe"][:firstname]}"

puts "-------"

# ______________________________________ Utilisation des hash dans les méthodes ______________________________________

# Passer un hash en paramètre d'une méthode est quelquechose de très courant en Ruby

# Creation d'une fonction qui génère du code html en fonction des attributs qu'on lui passe
# Les attributs qu'on retrouve sur toutes les fonctions sont :
# - le type de balise (ex: a, html, h1, div, …)
# - le contenu entre les balises
# Tout le reste (ex: href, class, id, …) sont optionels dans la déclaration d'une balise

def html_tag_creation(type, content, optional_attr={})
	attr_conc=""
	optional_attr.each {|attr, value| attr_conc += " #{attr}='#{value}'"}
	return "<#{type}#{attr_conc}>#{content}</#{type}>"
end

for_img = {
	:id => "my_id",
	:class => "my_class",
	:src => "../images/img.jpg"
}

for_p = {
	:class => "anotherclass"
}

puts html_tag_creation("img", "This is an image", for_img)
puts html_tag_creation("p", "Paragraph starting here…", for_p)

puts "-------"

# ______________________________________ Format de données ______________________________________

# CSV & JSON

# CSV = comma separated value // renvoi les informations sous forme de tableau 
# JSON => revoi les informations sous forme de hash

require "json"
require "open-uri"

# https://api.github.com/repos/mattharbo/airscout/commits/6eba1a323bbf58ffaa0956591c0d648732b34c42

def get_last_commit_author_and_time(project,sha)
	url = "https://api.github.com/repos/mattharbo/#{project}/commits/#{sha}"
	answer = JSON.parse(open(url).read)
	return "#{answer["commit"]["author"]["name"]} done the last commit at #{answer["commit"]["author"]["date"]}"
end

puts get_last_commit_author_and_time("airscout","6eba1a323bbf58ffaa0956591c0d648732b34c42")