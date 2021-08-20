# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

spot = Spot.new(
  name: "Wilson Skate Park",
  address: "2430 W Logan Blvd, Chicago, IL 60647",
  bust: "low",
  description: "Nice outdoor skatepark with a big concrete bowl. Good Parking",
  user_id: 4,
)
spot.save

spot = Spot.new(
  name: "Logan Park Skate Park",
  address: "2430 W Logan Blvd, Chicago, IL 60647",
  bust: "low",
  description: "An edgy skate & bike park with art installations, ramps & rails, situated below the expressway.",
  user_id: 2,
)
spot.save

spot = Spot.new(
  name: "Grant Park Skate Park",
  address: "1135 S Michigan Ave, Chicago, IL 60605",
  bust: "low",
  description: "Huge skate park in a prime location near Millenium Park and the museums.",
  user_id: 2,
)
spot.save

spot = Spot.new(
  name: "Sunset Woods Skate Park",
  address: "791 Central Ave, Highland Park, IL 60035",
  bust: "low",
  description: "Mix of quarter pipes and a micro half pipe",
  user_id: 3,
)
spot.save

spot = Spot.new(
  name: "Techny Skate Park",
  address: "1750 Techny Rd, Northbrook, IL 60062",
  bust: "low"
  description: "Big concrete park with mostly bowls",
  user_id: 3,
)
spot.save

spot = Spot.new(
  name: "Incline Ledge W. Cortland",
  address: "4800 W. Cortland Ave. Chicago,IL 60639",
  bust: "low",
  description: "1135 S Michigan Ave, Chicago, IL 60605",
  user_id: 2,
)
spot.save

spot = Spot.new(
  name: "Red Wave Ledge",
  address: "1740 W Warren Blvd, Chicago, IL 60612",
  bust: "medium",
  description: "Wavey Red ledge that makes it easy to do switch up tricks",
  user_id: 2,
)
spot.save

spot = Spot.new(
  name: "Cicero Sign Hand Rail",
  address: "4950 W Lexington St, Chicago, IL 60644",
  bust: "medium",
  description: "Medium height handrail into a bank over highway",
  user_id: 2,
)
spot.save

spot = Spot.new(
  name: "Highland Park Metra Station",
  address: "1710 St. Johns Ave. Highland Park, IL 60035",
  bust: "medium",
  description: "Handrail over stairs near Metra station",
  user_id: 3,
)
spot.save

trick = Trick.new(
  spot_id: 58,
  content: "Mizzou to 180 out",
  user_id: 3,
)
trick.save

trick = Trick.new(
  spot_id: 58,
  content: "360 to safety grab out",
  user_id: 3,
)
trick.save

trick = Trick.new(
  spot_id: 58,
  content: "Soyale to 360 out",
  user_id: 3,
)
trick.save

comment = Comment.new(
  spot_id: 56,
  user_id: 1,
  content: "What are the hours at this park? ",
)

comment.save

comment = Comment.new(
  spot_id: 60,
  user_id: 1,
  content: "Nice Spot!",
)

comment.save

comment = Comment.new(
  spot_id: 58,
  user_id: 3,
  content: "This place used to be better, but it is my hometown park. ",
)

comment.save
comment = Comment.new(
  spot_id: 62,
  user_id: 3,
  content: "Really unique spot, remember to bring wax!",
)
comment.save
