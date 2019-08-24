# Lesson #7 • Parsing

# 2 sujets abordés :
# - le stockage de données
# - la récupération de données via API

# ______________________________________ Format de données  ______________________________________

# CSV = le format le plus simple 
# XML = format en balise avec plusieurs niveaux d'imbrication (beaucoup utilisé il y a quelques années)
# JSON = même type que le XML mais beaucoup moins verbeux donc presque exclusivement utilisé today

# Le parsing consiste à transformer la grande chaîne de caractère qu'est un fichier JSON en un hash par du parsing

# ______________________________________ Parsing csv ______________________________________

# Pour parser un fichier en Ruby, il faut avant tout chose faire un require

# Pour les fichiers 'csv':
# require 'csv'

# La méthode csv.foreach parse ligne à ligne le fichier et les mets dans un tableau

# file = 'beer.csv'

# CSV.foreach(file) do |row|
# 	puts row[1] #===> renvoir le premier élément de chacun des lignes du fichier CSV
# end

# afin de supprimer l'en-tête, on va utiliser des options csv

 # csv_options = {
 # 	col_sep : ',',
 # 	quote_char : '"',
 # 	headers: : :first_row
 # }

# ce qui va permettre de 
# 1. ne pas prendre en considération la 1er ligne dans le retour des résultats mais surtout 
# 2. de permettre d'appeler le row avec le nom de l'en-tête

# CSV.foreach(file) do |row|
# 	puts row["Name"]
# end

# ______________________________________ Creation csv  ______________________________________

# csv_options2 = {
# 	quote_char : '"',
# 	col_sep : ',',
# 	force_quotes : true
# }

# file2 = './requires/players.csv'

# CSV.open(file2, 'wb') do |csv|
# 	csv << ['Name', 'Jersey number', 'Team']
# 	csv << ['Mbappe', '7', 'PSG']
# 	csv << ['Griezman', '7', 'Atletico']
# 	csv << ['Beckham', '32', 'Miami']
# end

# ______________________________________ Parsing XML ______________________________________

# Pour parser du XML, on va utiliser une GEM (c'est une librairie open source) qui faut rapatrier sur son ordinateur

# SEE IN THE COURSE - starting minute 26

# ______________________________________ Parsing JSON ______________________________________

# On va passer d'une string JSON à un Hash en Ruby qu'on pourra manipuler

require 'json'

jsonfile = File.read('requires/team.json')

teamshash = JSON.parse(jsonfile)

teamshash["team"].each do |squad|
	puts squad["name"]
end

puts "-------"


# ______________________________________ Storing JSON ______________________________________

require 'json'

filepath = 'requires/national_teams.json'

hash_to_store = {
	teams: [
		{
			name: 'France',
			nickname: 'Les bleus'
		},
		{
			name: 'Belgium',
			nickname: 'Les diables rouges'
		},
		{
			name: 'Spain',
			nickname: 'Roja'
		}
	]
}

File.open(filepath, 'w') do |the_file|
	the_file.write(JSON.generate(hash_to_store))
end

# Il y a deux choses à savoir sur le Json en Ruby :
# - JSON.parse(string) => hash // Désérialisation
# - JSON.generate(hash) => string // Sérialisation

# ______________________________________ Appel d'une route API ______________________________________

require 'json'
require 'open-uri'

url = "http://api.icndb.com/jokes/random"

result = JSON.parse(open(url).read)

puts "Chuck Nurris fact ==> #{result["value"]["joke"]}"

puts "-------"

# ______________________________________ Scrapping de page web • CSS Selector ______________________________________

# Pour des sites internet qui n'ont pas d'API, on va aller scrapper le DOM (ie. la structure HTML)

# Pre-requis : il faut maîtriser l'inspect des elements qui constituent une page web >>>> les css selectors

# Voir la documentation des selecteurs sur MDN

# On va donc faire une recherche sur un document HTML et boucler dessus
# Ce même document qui a été récupéré par la GEM Nokogiri

require 'open-uri'
require 'nokogiri'

url = "https://www.lequipe.fr/Football/FootballResultat63413.html"

html_doc = Nokogiri::HTML(open(url))

selector = ".equipeDom > a"

html_doc.search(selector).each do |domteam|
	puts domteam.text
end












