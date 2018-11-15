user1 = User.create(name: "James Lee", age: 31, location: "NJ", occupation: "student")
user2 = User.create(name: "Rufat Agayev", age: 31, location: "NYC", occupation: "student")
user3 = User.create(name: "Omid Vatandoost", age: 24, location: "Brooklyn", occupation: "student")
user4 = User.create(name: "Kevy Wevy", age: 99, location: "Brooklyn", occupation: "teacher")

potluck1 = Potluck.create(attendees: 30, address: "81 Prospect St, Brooklyn, NY 11201", description: "my party", location_id: 1 )
potluck2 = Potluck.create(attendees: 25, address: "18 W 18th St, New York, NY 10011", description: "great party", location_id: 2)
potluck3 = Potluck.create(attendees: 20, address: "123 My House Street, Queens, NY, 12345", description: "best party", location_id: 5)


foodcat1 = FoodCategory.create(name: "appetizer")
foodcat2 = FoodCategory.create(name: "entree")
foodcat3 = FoodCategory.create(name: "drink")
foodcat4 = FoodCategory.create(name: "dessert")

location1 = Location.create(city: "Manhattan")
location2 = Location.create(city: "Queens")
location3 = Location.create(city: "Brooklyn")
location4 = Location.create(city: "Bronx")
location5 = Location.create(city: "Staten")



plfood1 = PotluckFood.create(user_id: user1.id, food_category_id: foodcat1.id, potluck_id: potluck1.id, rating: 3, review: "asd")
