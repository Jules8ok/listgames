# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Tournament.destroy_all
Tournament.create(name: "Christmas Tournament", max_player: 5, address: " 22 drève pittoresque 1640 Rhode-Saint genèse Belgique", date: "25 decembre 2017")
Tournament.create(name: "Junior Tournament", max_player: 4, address: " 124 rue de l'été 1050 Ixelles Belgique", date: "6 may 2019")
Tournament.create(name: "Senior Tournament", max_player: 3, address: " 13 rue Jules Colle Waterloo", date: "27 decembre 2018")

User.destroy_all
user = User.new
user.email = 'test@example.com'
user.password = 'password'
user.password_confirmation = 'password'
user.address = "test street n°23 brussels "
user.first_name = "Pierre"
user.admin = true
user.save!
user = User.new
user.email = 'test1@example.com'
user.password = 'password'
user.password_confirmation = 'password'
user.address = "test1 street n°23 brussels "
user.first_name = "George"
user.admin = true
user.save!
user = User.new
user.email = 'test2@example.com'
user.password = 'password'
user.password_confirmation = 'password'
user.address = "test2 street n°23 brussels "
user.first_name = "Ernest"
user.admin = true
user.save!
user = User.new
user.email = 'test3@example.com'
user.password = 'password'
user.password_confirmation = 'password'
user.address = "test3 street n°23 brussels "
user.first_name = "Alban"
user.admin = true
user.save!
user = User.new
user.email = 'test4@example.com'
user.password = 'password'
user.password_confirmation = 'password'
user.address = "test4 street n°23 brussels "
user.first_name = "Antoine"
user.admin = true
user.save!
user = User.new
user.email = 'test5@example.com'
user.password = 'password'
user.password_confirmation = 'password'
user.address = "test5 street n°23 brussels "
user.first_name = "Kevin"
user.admin = true
user.save!

Game.destroy_all
Game.create(title: "Call Of Duty", description: "War game, very agressif, blood, -18!" )
Game.create(title: "League Of Legend", description: "Addictif game, aventure, -7." )
Game.create(title: "SIMS III + extra dog", description: "Construction, family, for girl" )
Game.create(title: "Counter Strike", description: "War game, very agressif, blood, -18!" )
Game.create(title: "GTA VI", description: "The famous GTA VI, arcade, -18!" )


Matche.destroy_all
match1 = Matche.new
match1.score = "1-0"
match1.game = Game.find_by_title("Call Of Duty")
match1.users= [User.find_by_email("test5@example.com"), User.find_by_email("test4@example.com") ]
match1.save!
match2 = Matche.new
match2.score = "2-0"
match2.game = Game.find_by_title("League Of Legend")
match2.users= [User.find_by_email("test2@example.com"), User.find_by_email("test3@example.com") ]
match2.save!
match3 = Matche.new
match3.score = "3-1"
match3.game = Game.find_by_title("Counter Strike")
match3.users= [User.find_by_email("test@example.com"), User.find_by_email("test1@example.com") ]
match3.save!




