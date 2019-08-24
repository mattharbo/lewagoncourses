require 'net/http'
require 'json'

# Fonction permettant d'appeler une route d'API
def api_call(url)
	uri = URI(url)
	req = Net::HTTP::Get.new(uri)
	req['X-Auth-Token'] = "b7fb6cd48401444cad8e84046ef0ced0"
	res = Net::HTTP.start(uri.hostname, uri.port) {|http|
	  http.request(req)
	}
	return res.body
end

ligue1day10 = "http://api.football-data.org/v2/competitions/2015/matches?matchday=7"

gameday_jsonresponse = JSON.parse(api_call(ligue1day10))
puts "#{gameday_jsonresponse["competition"]["name"]} • Day #{gameday_jsonresponse["filters"]["matchday"]}\n\n"

# matches => array avec tous les tableaux
# sur lequel il faut looper pour avoir tous les matchs IDs
matchesoftheday = gameday_jsonresponse["matches"]

matchesoftheday.each do |match|
	# match est un hash contenant toutes les informations d'une rencontre de la journée
	gameinfo = "http://api.football-data.org/v2/matches/#{match["id"]}"
	match_jsonresponse = JSON.parse(api_call(gameinfo))
	puts "#{match_jsonresponse["match"]["score"]["fullTime"]["homeTeam"]} - #{match_jsonresponse["match"]["score"]["fullTime"]["awayTeam"]} >> #{match_jsonresponse["match"]["homeTeam"]["name"]} vs. #{match_jsonresponse["match"]["awayTeam"]["name"]}"
	sleep(0.4)
end