# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Tournament.destroy_all
Tournament.create(name: "May Tournament", max_player: 5, address: " 22 drève pittoresque 1640 Rhode-Saint genèse Belgique", date: "25 decembre 2017")
Tournament.create(name: "Junior Tournament", max_player: 4, address: " 124 rue de l'été 1050 Ixelles Belgique", date: "6 may 2019")
Tournament.create(name: "Senior Tournament", max_player: 3, address: " 13 rue Jules Colle Waterloo", date: "27 decembre 2018")
Tournament.create(name: "Sun Tournament", max_player: 5, address: " 22 drève pittoresque 1640 Rhode-Saint genèse Belgique", date: "25 decembre 2017")
Tournament.create(name: "June Tournament", max_player: 4, address: " 124 rue de l'été 1050 Ixelles Belgique", date: "6 may 2019")
Tournament.create(name: "Week Tournament", max_player: 3, address: " Ixelles", date: "27 decembre 2018")
Tournament.create(name: "The Tournament", max_player: 5, address: " Uccle", date: "25 decembre 2017")
Tournament.create(name: "Yolo Tournament", max_player: 4, address: " Rhode-Saint-Genèse", date: "6 may 2019")
Tournament.create(name: "French Tournament", max_player: 3, address: "Amien", date: "27 decembre 2018")
Tournament.create(name: "March Tournament", max_player: 5, address: " Arlon", date: "25 decembre 2017")
Tournament.create(name: "April Tournament", max_player: 4, address: " Saint-Quentin en Tourmont", date: "6 may 2019")
Tournament.create(name: "July Tournament", max_player: 3, address: " Lille", date: "27 decembre 2018")

User.destroy_all
user = User.new
user.email = 'test@example.com'
user.password = 'password'
user.password_confirmation = 'password'
user.address = "new-york "
user.first_name = "Pierre"
user.admin = true
user.skip_confirmation_notification!
user.skip_confirmation!
user.save!
user = User.new
user.email = 'test1@example.com'
user.password = 'password'
user.password_confirmation = 'password'
user.address = "paris "
user.first_name = "George"
user.admin = true
user.skip_confirmation!
user.save!
user = User.new
user.email = 'test2@example.com'
user.password = 'password'
user.password_confirmation = 'password'
user.address = "paris "
user.first_name = "Ernest"
user.admin = true
user.skip_confirmation!
user.save!
user = User.new
user.email = 'test3@example.com'
user.password = 'password'
user.password_confirmation = 'password'
user.address = "champs elisé "
user.first_name = "Alban"
user.admin = true
user.skip_confirmation!
user.save!
user = User.new
user.email = 'test4@example.com'
user.password = 'password'
user.password_confirmation = 'password'
user.address = "paris "
user.first_name = "Antoine"
user.admin = true
user.skip_confirmation!
user.save!
user = User.new
user.email = 'test5@example.com'
user.password = 'password'
user.password_confirmation = 'password'
user.address = "brussels "
user.first_name = "Kevin"
user.admin = true
user.skip_confirmation!
user.save!
user = User.new
user.email = 'test6@example.com'
user.password = 'password'
user.password_confirmation = 'password'
user.address = "brussels "
user.first_name = "Philippe"
user.admin = true
user.skip_confirmation!
user.save!
user = User.new
user.email = 'test7@example.com'
user.password = 'password'
user.password_confirmation = 'password'
user.address = "brussels "
user.first_name = "Marin"
user.admin = true
user.skip_confirmation!
user.save!
user = User.new
user.email = 'test8@example.com'
user.password = 'password'
user.password_confirmation = 'password'
user.address = "brussels "
user.first_name = "Frans"
user.admin = true
user.skip_confirmation!
user.save!
user = User.new
user.email = 'test9@example.com'
user.password = 'password'
user.password_confirmation = 'password'
user.address = "brussels "
user.first_name = "Marie"
user.admin = true
user.skip_confirmation!
user.save!
user = User.new
user.email = 'test10@example.com'
user.password = 'password'
user.password_confirmation = 'password'
user.address = "ixelles"
user.first_name = "Antoinette"
user.admin = true
user.skip_confirmation!
user.save!
user = User.new
user.email = 'test11@example.com'
user.password = 'password'
user.password_confirmation = 'password'
user.address = "uccle "
user.first_name = "Robert"
user.admin = true
user.skip_confirmation!
user.save!
user = User.new
user.email = 'test12@example.com'
user.password = 'password'
user.password_confirmation = 'password'
user.address = "foret bruxelles "
user.first_name = "Jean"
user.admin = true
user.skip_confirmation!
user.save!
user = User.new
user.email = 'test13@example.com'
user.password = 'password'
user.password_confirmation = 'password'
user.address = "bois de la cambre "
user.first_name = "Leon"
user.admin = true
user.skip_confirmation!
user.save!
user = User.new
user.email = 'test14@example.com'
user.password = 'password'
user.password_confirmation = 'password'
user.address = "avenue d'hougoumont "
user.first_name = "Raoul"
user.admin = true
user.skip_confirmation!
user.save!
user = User.new
user.email = 'test15@example.com'
user.password = 'password'
user.password_confirmation = 'password'
user.address = "ixelles "
user.first_name = "Cassy"
user.admin = true
user.skip_confirmation!
user.save!
user = User.new
user.email = 'test16@example.com'
user.password = 'password'
user.password_confirmation = 'password'
user.address = "brussels "
user.first_name = "Amhed"
user.admin = true
user.skip_confirmation!
user.save!
user = User.new
user.email = 'test17@example.com'
user.password = 'password'
user.password_confirmation = 'password'
user.address = "Arlon"
user.first_name = "John"
user.admin = true
user.skip_confirmation!
user.save!
user = User.new
user.email = 'test18@example.com'
user.password = 'password'
user.password_confirmation = 'password'
user.address = "Angoulême "
user.first_name = "Charly"
user.admin = true
user.skip_confirmation!
user.save!

Game.destroy_all
Game.create(title: "Call Of Duty", description: "War game, very agressif, blood, -18!" )
Game.create(title: "League Of Legend", description: "Addictif game, aventure, -7." )
Game.create(title: "SIMS III + extra dog", description: "Construction, family, for girl" )
Game.create(title: "Counter Strike", description: "War game, very agressif, blood, -18!" )
Game.create(title: "GTA VI", description: "The famous GTA VI, arcade, -18!" )
Game.create(title: "Call Of Duty II", description: "War game, very agressif, blood, -18!" )
Game.create(title: "Espion 4", description: "Addictif game, aventure, -7." )
Game.create(title: "Vicking", description: "Construction, family, for girl" )
Game.create(title: "Minecraft", description: "War game, very agressif, blood, -18!" )
Game.create(title: "Fifa 2017", description: "The famous GTA VI, arcade, -18!" )
Game.create(title: "Last Of Us", description: "War game, very agressif, blood, -18!" )
Game.create(title: "Fast and Furious", description: "Addictif game, aventure, -7." )
Game.create(title: "Harry Potter", description: "Construction, family, for girl" )
Game.create(title: "SIMS 16 + Kitchen", description: "War game, very agressif, blood, -18!" )
Game.create(title: "Fifa 2016", description: "The famous GTA VI, arcade, -18!" )


Matche.destroy_all
match1 = Matche.new
match1.score = "1-0"
match1.game = Game.find_by_title("Call Of Duty")
match1.users= [User.find_by_email("test5@example.com"), User.find_by_email("test4@example.com") ]
match1.tournament= Tournament.find_by_name("Junior Tournament")
match1.save!
match2 = Matche.new
match2.score = "2-0"
match2.game = Game.find_by_title("League Of Legend")
match2.users= [User.find_by_email("test2@example.com"), User.find_by_email("test3@example.com") ]
match2.tournament= Tournament.find_by_name("Senior Tournament")
match2.save!
match3 = Matche.new
match3.score = "3-1"
match3.game = Game.find_by_title("Counter Strike")
match3.users= [User.find_by_email("test@example.com"), User.find_by_email("test1@example.com") ]
match3.tournament= Tournament.find_by_name("May Tournament")
match3.save!




