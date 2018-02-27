# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)





user1 = User.create(name:"connie", current_lat:40.7047461, current_long:74.01322789999999, email:"connie@connie.com", password:"connieconnie")
user2 = User.create(name:"paul", current_lat:40.724087,
current_long:-73.985179, email:"paul@paul.com", password:"paulpaul")
user3 = User.create(name:"jake", current_lat:43.519145, current_long:-110.841258, email:"jake@jake.com", password:"jakejake")

food = Category.create(name: "Food")
outdoors = Category.create(name: "Outdoors")
sports = Category.create(name: "Sports")
entertainment = Category.create(name: "Arts/Entertainment")



activity1 = Activity.create(name:"Hometown", description:"delicious hotpot", lat:40.719403, long:-73.996870, completed:false, user_id:2, category_id:1)
activity2 = Activity.create(name: "Skiing", description:"Skiing @ JHMR", lat: 43.587332, long: -110.829230, completed: false, user_id:3, category_id: 2)
activity3 = Activity.create(name:"Yeethoven @ Lincoln Center", description:"Kanye + Baethoven", lat:40.772728, long:-73.983467, completed:false, user_id:1, category_id:4)
