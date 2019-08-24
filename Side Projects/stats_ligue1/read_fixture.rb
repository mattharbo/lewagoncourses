require 'json'

fixture_details = File.read('./rennes_psg.json')

fixture_hash = JSON.parse(fixture_details)

# fixture_hash["fixtures"][0]


fix_date = fixture_hash["fixtures"][0]["event_date"]
fix_stadium = fixture_hash["fixtures"][0]["venue"]
fix_home_team = fixture_hash["fixtures"][0]["homeTeam"]["team_name"]
fix_away_team = fixture_hash["fixtures"][0]["awayTeam"]["team_name"]
fix_score_home = fixture_hash["fixtures"][0]["goalsHomeTeam"]
fix_score_away = fixture_hash["fixtures"][0]["goalsAwayTeam"]

puts "#{fix_date} @ #{fix_stadium}"
puts ""
puts "#{fix_home_team} #{fix_score_home} - #{fix_score_away} #{fix_away_team}"
puts ""

fixture_hash["fixtures"][0]["lineups"].each do |key,value|
  value["startXI"].each do |player|
    puts "• #{player["number"]} #{player["player"]}"
  end
  puts "--- Substitutes ---"
  value["substitutes"].each do |player|
    puts "• #{player["number"]} #{player["player"]}"
  end
  puts "___________________"
end

fixture_hash["fixtures"][0]["statistics"].each do |key,stat|

  if stat["home"] && stat["away"] != "NULL"
    puts "#{key} => #{stat["home"]} vs. #{stat["away"]}"
  end
end
