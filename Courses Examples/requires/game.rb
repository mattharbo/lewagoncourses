class Game

	attr_accessor :home_team :away_team :home_score :away_score
	attr_reader :date :game_status

	def initialize(date,home,away)
		@date = date
		@home_team = home
		@away_team = away
		@home_score = 0
		@away_score = 0
		@game_status = "scheduled"
	end

	# private

	# def start_game
	# 	@game_status = "started"
	# end

	# def end_game
	# 	@game_status = "ended"
	# end

	# def goal(team)
	# 	if team == "home"
	# 		@home_score += 1
	# 	else
	# 		@away_score += 1
	# 	end
	# end

end