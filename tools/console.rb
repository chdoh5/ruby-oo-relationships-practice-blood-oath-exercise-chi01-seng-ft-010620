require_relative '../config/environment.rb'
require "pp"

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# binding.pry

# puts "Mwahahaha!" # just in case pry is buggy and exits

 cats = Cult.new("The Cats", "Chicago", 2020, "Life's Puurrrrfect")
 dogs = Cult.new("The Dogs", "Madison", 1920, "WOOF!")
 remus = Follower.new("Remus", 5, "MURDER")
 christine = Follower.new("Christine", 30, "Remus?!?")
 lexie = Follower.new("Lexie", 32, "Are You Serious.")


  # remus.life_motto
#  remus_and_cats = BloodOath.new("2020-01-12")
#  remus_and_cats.initiation_date
 cats.recruit_follower(remus)
 cats.recruit_follower(christine)
 cats.recruit_follower(lexie)
 lexie.join_cult(dogs)
 remus.join_cult(dogs)


# puts remus.age
# puts christine.age
# puts lexie.age

# # p Follower.of_a_certain_age(30)

# # p BloodOath.all[1].initiation_date
# # p BloodOath.all[0].initiation_date
# p BloodOath.initiation_date(lexie, dogs)
# p BloodOath.initiation_date(remus, cats)
# p BloodOath.initiation_date(remus, dogs)
# p BloodOath.initiation_date(christine, dogs)

# p dogs.followers
# p dogs.average_age


# pp Cult.find_by_name("The Cats").followers

# pp Follower.of_a_certain_age(5)

# p BloodOath.initiation_date(christine, cats)
# p Cult.find_by_location("Madison")
p cats.cult_population






