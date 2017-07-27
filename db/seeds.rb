# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.new
user.email = 'test@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'

Tournament.destroy_all
Tournament.create(name: "Christmas Tournament", maxplayer: 5, address: " 22 drève pittoresque 1640 Rhode-Saint genèse Belgique", date: "25 decembre 2017")
Tournament.create(name: "Junior Tournament", maxplayer: 4, address: " 124 rue de l'été 1050 Ixelles Belgique", date: "06 mai 2017")
Tournament.create(name: "Senior Tournament", maxplayer: 3, address: " 13 rue Jules Colle Waterloo", date: "27 decembre 2018")


Game.destroy_all
Game.create(name: "Call Of Duty")
Game.create(name: "League Of Legend")
Game.create(name: "SIMS III + extra dog")
Game.create(name: "Counter Strike")
Game.create(name: "GTA V")
