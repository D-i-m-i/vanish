
Van.destroy_all
User.destroy_all
Booking.destroy_all

user1 = User.create!(email: "email1@email.com", password: "123456", reset_password_token: "reset token test 1", name: "Josh Howard", bio: "Am I supposed to write something here?")

user2 = User.create!(email: "email2@email.com", password: "123456", reset_password_token: "reset token test 2", name: "Melissa Ugas", bio: "I like turtles.")

host1 = User.create!(email: "host1@email.com", password: "123456", reset_password_token: "reset token test 3", name: "Jamie Guzman", bio: "I've decided to rent my personal camper van François, so that others can enjoy the beauty of nature and have a comfortable camping experience. I try to be a responsible steward of the land, air, water, and biodiversity. Realizing that we all have impacts when we visit natural areas and parks, I will donate 2% of proceeds to environmental causes, National Parks Foundations, and other friend group organizations. Please reach out with any questions!")

host2 = User.create!(email: "host2@email.com", password: "123456", reset_password_token: "reset token test 4", name: "Patricio Henrickson", bio: "We love to camp, our camping love started with backpacking trips in college and as we had kids shifted to long car/RV camping trips with the kids. We have slowly introduced them to backpacking but our primary camping trips are 3-4 days in length. We transitioned from a pop-up trailer and now have a van that we rent out here on Vanish.")

puts "created 4 users (2 hosts)"

crv = Van.create!(name: "Wildebeest", overview: "Travel comfortable and easy in this reliable feature packed small-form All-Wheel-Drive SUV. Regularly serviced, maintained and upgraded, this small SUV makes driving, parking and enjoying your journey easy and fun! Get far away from the bustle and open up more routes than just the sealed roads and highways in this reliable and capable little Wildebeest.", make_model_year: "Honda CRV 2014", address: "317 North 3rd St., CA 95112", kitchenette: false, toilet: false, solar_power: false, price: 66, user: host1)
file = File.open(Rails.root.join("app/assets/images/crv.jpg"))
crv.photos.attach(io: file, filename: 'crv.jpg', content_type: 'image/jpg')

minivan = Van.create!(name: "Siennita", overview: "Toyota sienna camper van. All wheel drive!!! You can go on Forrest service roads! Perfect combination of convenience and versatility. Toyota minivan with Thule Tepui Low Pro 2 tent. All conveniences are included. Portable bucket for pooping, Iceco portable compressor refrigerator. Camping chairs, table and sleeping bags are included free! Comfortably sleeps 2 adults and 2 kids.", make_model_year: "Toyota Sienna 2007", address: "903 Sugar St. Chino, CA 91710", kitchenette: true, toilet: true, solar_power: true, price: 84, user: host1)
file = File.open(Rails.root.join("app/assets/images/minivan.jpg"))
minivan.photos.attach(io: file, filename: 'minivan.jpg', content_type: 'image/jpg')

econobus = Van.create!(name: "Who's Out There?", overview: "Schools out for summer but you can always rent this converted short school bus called a Skoolie. It is in the middle of the national forest. This rental is a destination vacation. It is so fun with shag carpet dash, steering wheel and drivers seat. What the greatest thing is you are secluded and private. No neighbors but a beautiful forest with a nearby lake. The host is a radio call away. This is a destination camping where all you do is show up and the Skoolie is parked in a great spot. Instead of renting something to drive to a location we've taken that work out of the way. Oh also no cell service, so..... good luck!", make_model_year: "Ford Econoline Shortbus 1988", address: "317 North 3rd St., CA 95112", kitchenette: false, toilet: false, solar_power: false, price: 45, user: host2)
file = File.open(Rails.root.join("app/assets/images/econobus.jpg"))
econobus.photos.attach(io: file, filename: 'econobus.jpg', content_type: 'image/jpg')

econoline = Van.create!(name: "Die Hard", overview: "Don't be a chicken and go tackle some dirt roads.. you will zoom by the tipped over Sprinter Vans and stuck volkswagens while screaming 'Yippie Kay Yay Mother Cluckers'!", make_model_year: "Ford Econoline E350 2000", address: "903 Sugar St. Chino, CA 91710", kitchenette: false, toilet: false, solar_power: true, price: 185, user: host1)
file = File.open(Rails.root.join("app/assets/images/econoline.jpg"))
econoline.photos.attach(io: file, filename: 'econoline.jpg', content_type: 'image/jpg')

vanagon = Van.create!(name: "Gramps", overview: "Drive along the coast, or to the mountains. You’ll love my place because of the practical self-contained amenities. Charge your electronics, full-functioning sink, stove-top, fridge, and pull-out shower. You'll also love the ambiance, the outdoors space, the location, the people.. My place is good for couples, solo adventurers, and furry friends (pets).", make_model_year: "Volkswagen Vanagon 1995", address: "317 North 3rd St., CA 95112", kitchenette: true, toilet: false, solar_power: false, price: 142, user: host1)
file = File.open(Rails.root.join("app/assets/images/vanagon.jpg"))
vanagon.photos.attach(io: file, filename: 'vanagon.jpg', content_type: 'image/jpg')

og_vw = Van.create!(name: "Amine", overview: "1977 VW Bus, Westfalia with Rasta Pop Top. Travel back in time in this iconic 1977 VW Bus. Gets about 16mpg, and comes with additional camping equipment - table, chairs, stove, pots, pans, flashlights and other usefull stuff. Bring your own sleeping bag. Bring your own speaker! No radio. This is an old bus, original paint, not remodeled. Has lots of quirks. Comes with an operating manual describing all the quirks :) and no built in stove/sink. Fun drive, solid van, lots of fun and you'll make friends on your trip with this vintage bus!", make_model_year: "Volkswagen Westfalia 1977", address: "903 Sugar St. Chino, CA 91710", kitchenette: false, toilet: false, solar_power: false, price: 155, user: host2)
file = File.open(Rails.root.join("app/assets/images/og_vw.jpg"))
og_vw.photos.attach(io: file, filename: 'og_vw.jpg', content_type: 'image/jpg')

hightopvanagon = Van.create!(name: "Choncho", overview: "Calling all hippies, vanlifers, nomads, dreamers, and wanderlusters. If you are looking for your next road tripping campout adventure, don't worry, Choncho has you covered. Remember, the adventure is in the journey, not the destination. Meet Choncho. The legendary 1985 Volkswagen Westfalia camper van. He's equipped with a more powerful and reliable 2.2L watercooled Subaru engine, brand new pop-top roof, a kitchenette with propane stove and sink, cabinet storage, swiveling captain chairs, multiple table options, a main convertible bed/bench and a loft bunk, seating and sleeping for up to 4 people as well as your furry friend, Yakima roof rack and storage basket, and optional bike rack. Furthermore, for your climate control comfort Choncho offers manual roll-down windows and a roof vent (no a/c).", make_model_year: "Volkswagen Westfalia 1985", address: "317 North 3rd St., CA 95112", kitchenette: true, toilet: false, solar_power: false, price: 180, user: host1)
file = File.open(Rails.root.join("app/assets/images/hightopvanagon.jpg"))
hightopvanagon.photos.attach(io: file, filename: 'hightopvanagon.jpg', content_type: 'image/jpg')

poptopvanagon = Van.create!(name: "Cardiff", overview: "Cardiff is a gorgeous vintage Volkswagen Bay Window camper van with a Riviera Pop Top ready to spring into action for an Instagram-worthy road trip to remember! Cardiff has everything you’ll need for an awesome #vanlife experience whether it’s a quick weekend getaway or a more epic adventure. This classic van is a manual shift and can seat and sleep up to four people. Cardiff’s kitchen setup includes an icebox and a sink with running water for convenient culinary creations on the go. With electrical hookups and a smart phone jack, you can be nicely powered up while you’re in camp. This van feels so homey, you’ll forget you’re camping on wheels!", make_model_year: "Volkswagen Bay Window 1979", address: "903 Sugar St. Chino, CA 91710", kitchenette: true, toilet: false, solar_power: false, price: 240, user: host1)
file = File.open(Rails.root.join("app/assets/images/poptopvanagon.jpg"))
poptopvanagon.photos.attach(io: file, filename: 'poptopvanagon.jpg', content_type: 'image/jpg')

eurovan = Van.create!(name: "Trestles", overview: "Trestles is an Automatic Winnebago Pop-Top Camper :: 2 sleeping berths (sleeps 4 adults), refrigerator, sink, potable water tank, propane camp stove, on board propane heating system, A/C, RV electrical/water hook-ups. We, your genial hosts, are experts at facilitating Epic Road Trips in our nostalgic yet robust VW Camper Buses. We have been for over 14 years now. Our intimate knowledge of world class environment, coupled with the deep experience and intuitive understanding of what keeps these unique dream machines on the road is unsurpassed by any competitor in our region.", make_model_year: "Volkswagen Eurovan 2003", address: "317 North 3rd St., CA 95112",kitchenette: false, toilet: false, solar_power: true, price: 170, user: host1)
file = File.open(Rails.root.join("app/assets/images/eurovan.jpg"))
eurovan.photos.attach(io: file, filename: 'eurovan.jpg', content_type: 'image/jpg')

t1nsprinter = Van.create!(name: "Goose", overview: "High Roof Sprinter packed with amenities. Hot water, cooking-grade kitchen, outdoor shower, ample solar-electric power. Easy to maneuver, stealthily parks anywhere, amazing fuel economy 22-26mpg, ample storage for two + dog(s). Goose aims to be the best value for a full feature, high build quality, stand-up van. If you've found something better let's talk. 6 ft ceiling, Diesel cabin heater.. powerful & it works with engine off. Full-sized sink with running HOT & cold water, fridge and freezer 1.7 cu-ft + optional additional powered freezer/cooler. Passenger seat swivels for in-camp seating and 22-26mpg with car-like power", make_model_year: "Dodge T1NSprinter 2006", address: "903 Sugar St. Chino, CA 91710", kitchenette: true, toilet: true, solar_power: true, price: 249, user: host1)
file = File.open(Rails.root.join("app/assets/images/t1nsprinter.jpg"))
t1nsprinter.photos.attach(io: file, filename: 't1nsprinter.jpg', content_type: 'image/jpg')

transit = Van.create!(name: "Poppy", overview: "Poppy is a self-contained home on wheels with a pop-top! It has a 21-gallon freshwater tank, hot indoor and outdoor showers, a heated bathroom with an electric flush toilet, two large beds that easily accommodate four adults, a four-person dinette, and four seatbelts so you can bring your family or friends along with you. Cooking meals is easy with the two-burner propane range, deep sink with a high faucet, and a large fridge with a freezer to keep your veggies crisp, drinks cold, and ice at the ready. The Solis also has an onboard 2800 watt generator so you have full power to run the quiet AC or other appliances (coffee maker, Instant Pot, etc.) anywhere you go. And a cell phone booster to ensure you are connected at high speeds in more places.", make_model_year: "Ford Transit 2015", address: "317 North 3rd St., CA 95112", kitchenette: true, toilet: true, solar_power: false, price: 320, user: host2)
file = File.open(Rails.root.join("app/assets/images/transit.jpg"))
transit.photos.attach(io: file, filename: 'transit.jpg', content_type: 'image/jpg')

promaster = Van.create!(name: "Yak One", overview: "Yak One is a brand new 2021 Dodge Ram 2500 Promaster Van. Although it is built for two person, the additional seat and the dinette conversion gives you an option to a third person on your adventure. Yak One has everything that you want in a comfortable camper van - including full-sized bed, sink, induction stove, heater, AC, refrigerator, outdoor shower, cassette toilet.", make_model_year: "Ram Promaster 2021", address: "903 Sugar St. Chino, CA 91710", kitchenette: true, toilet: true, solar_power: true, price: 279, user: host2)
file = File.open(Rails.root.join("app/assets/images/promaster.jpg"))
promaster.photos.attach(io: file, filename: 'promaster.jpg', content_type: 'image/jpg')

sprinter = Van.create!(name: "Grey Lightning", overview: "Adventure awaits with our custom built Mercedes 2500 Diesel Sprinter Van. With real wood finishes and live edge counter tops you’ve never felt closer to adventure! Our van features a custom queen size bed that comfortably sleeps 2 persons, cabin AC and heat, dual swivel captain seats, Laguna table, custom matte black cabinets, electric range stove top, deep sink, mini fridge, cassette toilet, privacy magnetic shades, hot water heater and water pump, solar, electrical hookup, water hookup and water storage, filter for water, overhead fan, multiple windows, roof top deck, crank awning, projector screen with projector and firestick for entertainment. Additionally there is a bike rack with plenty of garage storage, not to mention overhead storage in the cabin. Safety features include blind spot alerts, lane assist, and factory anti-theft. This van is our stylish, but comfortable home away from home and we want to share it with you!", make_model_year: "Mercedez Sprinter 2021", address: "317 North 3rd St., CA 95112", kitchenette: true, toilet: true, solar_power: true, price: 220, user: host2)
file = File.open(Rails.root.join("app/assets/images/sprinter.jpg"))
sprinter.photos.attach(io: file, filename: 'sprinter.jpg', content_type: 'image/jpg')

puts "created 12 vans"
