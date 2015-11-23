# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.create! email: 'jane@doe.com',
                     password: "12345678"

user2 = User.create! email: "ruth_badder@scotus.com",
                     password: "12345678"

user3 = User.create! email: "scalia@angry.com",
                     password: "GodMerica"

user4 = User.create! email: "barry@prez.com",
                     password: "almostdone"

user5 = User.create! email: "taylor@1989.com",
                     password: "HarryStyles"

cheet1 = Cheet.create! entry: "I need coffee. Like all the time.",
                       user_id: user1.id

cheet2 = Cheet.create! entry: "Everyone is born equal!",
                       user_id: user2.id
