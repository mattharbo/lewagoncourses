require_relative "fast_food"
require_relative "gastro"

macdo = FastFood.new("Mac Donald", "Paris", 7)

macdo.clients << "Clara" << "Matthieu"

# lepic = Gastro.new("Dame de Pique", "Paris", 1)

macdo.print_clients

lepic = Restaurant.new("Dame de Pique", "Paris", "A-S Pic", 17)

p lepic.chief

puts "Le chef du Restaurant #{lepic.name} est #{lepic.chief.name}"
puts "Elle a #{lepic.chief.expe} ans d'expérience"