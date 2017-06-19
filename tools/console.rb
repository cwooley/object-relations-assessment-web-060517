require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


charles = Customer.new("Charles", "Wooley")
luke = Customer.new("Lukasz", "Rus")
eph = Customer.new("Ephraim", "Montesabian")
josh = Customer.new("Josh", "Clevenger")
tina = Customer.new("Tina", "Caracci")
hannah = Customer.new("Hannah", "Fitzgibbons")


surftaco = Restaurant.new("Surftaco")
andys = Restaurant.new("Andys")
asahi = Restaurant.new("Asahi")
ruby = Restaurant.new("Ruby")

charles.add_review(surftaco, "THIS PLACE ROCKS")
charles.add_review(asahi, "Raw fish is the best fish")
luke.add_review(andys, "Polish food is better")
tina.add_review(surftaco, "MMM TACOS")
eph.add_review(andys, "Pizza is delicious")
josh.add_review(surftaco, "Tacos bro")
hannah.add_review(asahi, "Sushi is tasty")





Pry.start
