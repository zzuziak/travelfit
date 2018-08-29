User.delete_all
Sport.delete_all
Participation.delete_all
Post.delete_all
Reply.delete_all
UserSport.delete_all
puts "clearing database!"
puts "Creating seed!"


User.create!([{
  email: "test1@example.com",
  password: "123456",
  first_name: "Zuza",
  last_name: "Zuber",
  remote_photo_url: "https://pbs.twimg.com/profile_images/479184144404996096/8cWEVGAK.jpeg"
},
{
  email: "test2@example.com",
  password: "123456",
  first_name: "Melissa",
  last_name: "Schwatz",
  remote_photo_url: "https://www.lifevinefamily.com/bin/uploads/2016/12/woman.jpg"
},
{
  email: "test3@example.com",
  password: "123456",
  first_name: "Simon",
  last_name: "Benkins",
  remote_photo_url: "http://alexcusackmanagement.com/wp-content/uploads/2015/03/Art-Kearns-CHD_5292-Crop.jpg"
},
{
  email: "test4@example.com",
  password: "123456",
  first_name: "Theresa",
  last_name: "Lumberg",
  remote_photo_url: "http://www.namespedia.com/image/Grannie_1.jpg"
},
{
  email: "test5@example.com",
  password: "123456",
  first_name: "Simon",
  last_name: "Constalones",
  remote_photo_url: "https://www.xing.com/image/5_0_6_be2064c23_19552288_2/simon-berg-foto.1024x1024.jpg"
}])

local_adventure = Sport.create!(category: "Local adventure", photo: "http://molescreenpdt.com.au/wp-content/uploads/2015/12/Outdoor-Sports-1440-900-widescreen-56450.jpg")
running = Sport.create!(category: "Running", photo: "https://cdn10.phillymag.com/wp-content/uploads/sites/3/2017/03/running-group-istock-940x540.jpg")
teamsports = Sport.create!(category: "Teamsports", photo: "https://thegamehaus.com/wp-content/uploads/2016/12/team-sports.jpg")
fitness = Sport.create!(category: "Fitness", photo: "https://landerapp.com/blog/wp-content/uploads/2018/07/6f66fc0ee89eac4cb13eceae9bf66242.jpeg")
yoga = Sport.create!(category: "Yoga", photo: "http://whitneypeakhotel.com/wp-content/uploads/2016/11/AdobeStock_107892322-800x533.jpeg")
racket_sport = Sport.create!(category: "Racket sports", photo: "https://well.pk/blog/wp-content/uploads/2015/09/Navarino-Racquet-Academy-1-1200x703.jpg")

running_events = Event.create!([{

  title: "Berlin Marathon 2018",
  description: "42km through the capital of Germany. This year we're celebrating the 45th edition of the Berlin Marathon. Are you up for the challenge?",
  date: "16.09.2018",
  intensity: 4,
  remote_photo_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1e/Orlen_Warsaw_Marathon_2014_al._KEN.JPG/1200px-Orlen_Warsaw_Marathon_2014_al._KEN.JPG",
  price: 95,
  address: "Berlin, Germany",
  capacity: 10_000,
  user_id: 2,
  sport_id: running.id
},
{
  title: "Nordic Walking at Tierpark",
  description: "Join our 3km walk at Tierpark, Berlin. The intensity won't be high! That said, you don't need to be in good shape to join this event. Grannies Welcome!",
  date: "20.01.2018",
  intensity: 1,
  remote_photo_url: "https://www.bythelake.ch/en/wp-content/uploads/sites/2/2016/10/Marche-nordique-article-21.jpg",
  price: 0,
  address: "Tierpark, Berlin",
  capacity: 20,
  user_id: 4,
  sport_id: running.id
},
{
  title: "Stair Climb Competition",
  description: "The climb includes 61 floors and 1200 stairs and hundreds of people will be participating.",
  date: "16.12.2018",
  intensity: 5,
  remote_photo_url: "https://img.aws.livestrongcdn.com/ls-article-image-673/ds-photo/getty/article/106/142/466290308.jpg",
  price: 37,
  address: "200 Clarendon Tower, Boston",
  capacity: 900,
  user_id: 1,
  sport_id: running.id
},
{
  title: "Meguro River Run",
  description: "The run is about four kilometres long and crosses through three Tokyo wards – Shinagawa, Setagaya and Meguro. The path along the river is beautiful, especially in the spring, when it is full of cherry blossoms.",
  date: "26.02.2019",
  intensity: 3,
  remote_photo_url: "https://i.pinimg.com/originals/0c/37/b2/0c37b20ea0cdba3f4d13b165320def5c.jpg",
  price: 0,
  address: "Meguro River, Tokyo",
  capacity: 10,
  user_id: 3,
  sport_id: running.id
},
{
  title: "Tokyo Marathon 2019",
  description: "The races will be conducted in accordance with the rules and regulations of the IAAF, JAAF and the Race Organizer.
IAAF Road Race Label Regulations also applies to the Tokyo Marathon 2019, which has been certified by the IAAF as a Gold Label road race. Doping control is conducted under IAAF Anti-Doping Regulations and/or Japan Anti-Doping Regulations.
World Para Athletics Rules and Regulations and the competition rules of the Tokyo Marathon applies to the wheelchair marathon. Doping control is conducted under World Para Athletics Anti-Doping Regulations and/or Japan Anti-Doping Regulations.",
  date: "16.02.2019",
  intensity: 3,
  remote_photo_url: "https://images.unsplash.com/photo-1494091778978-0711d4e36991?ixlib=rb-0.3.5&s=c9aabe286d620c9b103f5ca9745347e3&auto=format&fit=crop&w=1050&q=80",
  price: 0,
  address: "Tokyo",
  capacity: 10,
  user_id: 3,
  sport_id: running.id
}])

teamsports_events = Event.create!([{

  title: "3vs3 Rooftop Basketball",
  description: "The rooftop court at Kasumigaseki Building is the best place to ball in Tokyo! Join us for a 3on3 - semipro level skills required.",
  date: "01.06.2019",
  intensity: 4,
  remote_photo_url: "https://c1.staticflickr.com/3/2387/2224459077_20f0603f8b_b.jpg",
  price: 15,
  address: "Kasumigaseki Building, Tokyo",
  capacity: 6,
  user_id: 5,
  sport_id: teamsports.id
},
{
  title: "Beach Volleyball",
  description: "bla",
  date: "23.02.2019",
  intensity: 2,
  remote_photo_url: "https://pixfeeds.com/images/sports/volleyball/1280-458355885-beach-volleyball-in-thailand-university-games.jpg",
  price: 0,
  address: "Teganooka Park, Tokyo",
  capacity: 4,
  user_id: 2,
  sport_id: teamsports.id
},
{
  title: "Spring Soccer Tournament",
  description: "3rd Annual Spring Shootout Soccer Tournament - come celebrate Cedar Point's 2019 opening weekend in Sandusky, Ohio! Last year's tournament had more than 70 teams and we expect 2019 to be even bigger!",
  date: "03.05.2018",
  intensity: 2,
  remote_photo_url: "https://cdn.primedia.co.za/primedia-broadcasting/image/upload/c_fill,h_289,q_70,w_463/euyjbw0hvcvlkf1va0ty",
  price: 35,
  address: "Kumano Shrine, Tokyo",
  capacity: 22,
  user_id: 3,
  sport_id: teamsports.id
}])

local_adventure_events = Event.create!([{

  title: "Swimming Competition",
  description: "5km swim race in open-waters across the Wannsee lake",
  date: "28.08.2018",
  intensity: 5,
  remote_photo_url: "https://images.unsplash.com/photo-1530138948699-6a75eebc9d9b?ixlib=rb-0.3.5&s=13d449cf21080629af3584c66193eb2c&auto=format&fit=crop&w=1649&q=80",
  price: 5,
  address: "Wannsee, Berlin",
  capacity: 200,
  user_id: 1,
  sport_id: local_adventure.id
},
{
  title: "Muay Thai boxing bootcamp",
  description: "Muay Thai is an AWESOME workout that gets you fitter and healthier, whilst teaching you street effective self-defence skills.",
  date: "10.10.2018",
  intensity: 4,
  remote_photo_url: "http://www.bettingsites.us/wp-content/uploads/box-1024x683.jpg",
  price: 5,
  address: "Lumphini Park, Bangkok",
  capacity: 15,
  user_id: 3,
  sport_id: local_adventure.id
},
{
  title: "Karate - intro",
  description: "Beginner class for all who want to get acquianted with basics of Karate",
  date: "10.02.2019",
  intensity: 3,
  remote_photo_url: "https://images.unsplash.com/photo-1529630218527-7df22fc2d4ee?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=b55429a19dbc270c01c89f369927ec63&auto=format&fit=crop&w=1052&q=80",
  price: 5,
  address: "Omotesanto, Tokyo",
  capacity: 15,
  user_id: 2,
  sport_id: local_adventure.id
},
{
  title: "Canoeing tour",
  description: "The lakes and its numerous canals run through many famous sights in Berlin such as the TV-tower, the Molecule Men or the Oberbaum-Bridge. Paddle with us through Berlin and be surprised by the wonderful scene!",
  date: "08.09.2018",
  intensity: 2,
  remote_photo_url: "https://images.unsplash.com/photo-1532528791647-87400fc51288?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=5676f38161ec1c86f4882cdc4357b87c&auto=format&fit=crop&w=967&q=80",
  price: 0,
  address: "Mazury, Polska",
  capacity: 15,
  user_id: 1,
  sport_id: local_adventure.id
},
{
  title: "Swimming class",
  description: "We will work on the foundations of basic styles in swimming at one of the best Tokyo spots.",
  date: "28.03.2019",
  intensity: 2,
  remote_photo_url: "https://images.unsplash.com/photo-1504309092620-4d0ec726efa4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=f38e067fcad97bc3b247b3db0859af1c&auto=format&fit=crop&w=1050&q=80",
  price: 5,
  address: "Ueno, Tokyo",
  capacity: 200,
  user_id: 1,
  sport_id: local_adventure.id
},
{
  title: "Skiing down Fiji",
  description: "20km offpiste on the most famous japanese mountain - with a professionnal mountain guide from the valley",
  date: "20.02.2019",
  intensity: 4,
  remote_photo_url: "https://www.wantedinrome.com/i/preview/storage/uploads/2015/02/skiing-86491418.jpg",
  price: 5,
  address: "Fiji, Japan",
  capacity: 6,
  user_id: 2,
  sport_id: local_adventure.id
}])

fitness_events = Event.create!([
{
title: "Weekly calisthenics",
description: "Weekly workout in Tokyo, suitable for beginners and advanced street workout freaks. We will work on strenght, mobility and balance. Extension bands provided!",
date: "12.02.2019",
intensity: 4,
remote_photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5PW52EmBoJUmQWDqrj9jLBVrk6cHzW67mZ2in1JUc06xAc1fr9w
",
price: 0,
address: "Harajuku, Tokyo, Japan",
capacity: 20,
user_id: 3,
sport_id: fitness.id
},
  {
  title: "Crossfit WOD",
  description: "Weekly workout in Lisboa. All equipment provided on site!",
  date: "12.09.2018",
  intensity: 4,
  remote_photo_url: "https://customersuccessbox.com/blog/wp-content/uploads/2017/05/Customer-Success-by-building-Product-Stickiness.jpg",
  price: 95,
  address: "Garden Beau-Sejour Palace, Lisboa",
  capacity: 30,
  user_id: 4,
  sport_id: fitness.id
},
{
  title: "Functional training",
  description: "Let's get together for a functional workout! No equipment needed, we will work with our own bodyweight. Appropriate for begginers and advanced people!",
  date: "21.03.2019",
  intensity: 3,
  remote_photo_url: "https://drummondeducation.com/wp-content/uploads/2015/07/715-outdoor-fitness-copy-.jpg",
  price: 0,
  address: "Yoyogi, Tokyo",
  capacity: 12,
  user_id: 3,
  sport_id: fitness.id
},
{
  title: "Spartan Race Tokyo",
  description: "Obstacle Course Race comes to Tokyo again! Pick between Sprint, Super and Beast - all do them all! ",
  date: "15.03.2019",
  intensity: 5,
  remote_photo_url: "https://scontent-amt2-1.xx.fbcdn.net/v/t1.0-9/37407117_1779824532101894_2518401911355342848_n.jpg?_nc_cat=0&oh=7fc78f0c9dcfa1e234b1cca9e02b933c&oe=5C38D942",
  price: 40,
  address: "Ukima Park, Tokyo",
  capacity: 10_000,
  user_id: 3,
  sport_id: running.id
}])

racket_sport_events = Event.create!([{

  title: "Pingpong tournament",
  description: "Show us your Ping-Pong skills with our double elimination tournament! Tournament open to everyone, and winner will receive a 50€ gift card from Le Wagon",
  date: "20.09.2018",
  intensity: 2,
  remote_photo_url: "https://cdn.funcheap.com/wp-content/uploads/2013/01/old-school-tiger_grande.jpg",
  price: 0,
  address: "Templehofer Feld, Berlin",
  capacity: 100,
  user_id: 1,
  sport_id: racket_sport.id
},
{
  title: "Icehockey Pickup Game",
  description: "Show us your Ping-Pong skills with our double elimination tournament! Tournament open to everyone, and winner will receive a 50€ gift card from Le Wagon",
  date: "20.09.2018",
  intensity: 2,
  remote_photo_url: "http://www.grangergrouptahoe.com/wp-content/uploads/2010/01/Addo-Griff-at-Donner-Lake-2.jpg",
  price: 0,
  address: "Loon Lake, Vancouver",
  capacity: 26,
  user_id: 4,
  sport_id: racket_sport.id
},
{
  title: "Tennis in the backyard",
  description: "Show us your Ping-Pong skills with our double elimination tournament! Tournament open to everyone, and winner will receive a 50€ gift card from Le Wagon",
  date: "20.09.2018",
  intensity: 2,
  remote_photo_url: "http://www.courtofsport.com/websites/courtofsport/photogallery/5573747/backyard-tennis-court-house.jpg",
  price: 0,
  address: "Stenhouse, Edinburgh",
  capacity: 4,
  user_id: 2,
  sport_id: racket_sport.id
},
{
  title: "Squash Matchup",
  description: "Show us your Ping-Pong skills with our double elimination tournament! Tournament open to everyone, and winner will receive a 50€ gift card from Le Wagon",
  date: "14.01.2019",
  intensity: 3,
  remote_photo_url: "https://muskelpower.de/wp-content/uploads/squash.jpg",
  price: 22,
  address: "Mita International School, Tokyo",
  capacity: 2,
  user_id: 3,
  sport_id: racket_sport.id
}])


yoga_events = Event.create!([{

  title: "Yoga & Meditation",
  description: "Show us your Ping-Pong skills with our double elimination tournament! Tournament open to everyone, and winner will receive a 50€ gift card from Le Wagon",
  date: "10.03.2019",
  intensity: 1,
  remote_photo_url: "https://images.unsplash.com/photo-1513221323698-800407ce0781?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a752a5417d689bb6e938b2f90c96f9be&auto=format&fit=crop&w=1050&q=80",
  price: 0,
  address: ", Bamboo Forest, Kyoto",
  capacity: 10,
  user_id: 3,
  sport_id: yoga.id
},
{
  title: "Chakras Yoga",
  description: "Show us your Ping-Pong skills with our double elimination tournament! Tournament open to everyone, and winner will receive a 50€ gift card from Le Wagon",
  date: "24.03.2019",
  intensity: 1,
  remote_photo_url: "http://pranashanti.com/wp-content/uploads/2018/06/Yoga-Paark.jpg",
  price: 0,
  address: "Yoyogi-Park, Tokyo",
  capacity: 17,
  user_id: 1,
  sport_id: yoga.id
},
{
  title: "Kundalini yoga",
  description: "Show us your Ping-Pong skills with our double elimination tournament! Tournament open to everyone, and winner will receive a 50€ gift card from Le Wagon",
  date: "19.12.2018",
  intensity: 1,
  remote_photo_url: "https://static1.squarespace.com/static/5578dc95e4b0204b4bc0abce/t/5716169404426269d6cee1a1/1461065596609/JOY-Kundalini-Yoga-London-SatKriya.JPG",
  price: 0,
  address: "Hartenbergpark, Mainz",
  capacity: 17,
  user_id: 1,
  sport_id: yoga.id
},
{
  title: "Restorative Yoga",
  description: "Show us your Ping-Pong skills with our double elimination tournament! Tournament open to everyone, and winner will receive a 50€ gift card from Le Wagon",
  date: "13.09.2019",
  intensity: 2,
  remote_photo_url: "https://img.gtvcdn.com/cdn/farfuture/aDE1dPYX_0JPWreUCsPoL7RUehzaAxvqJL7VfLAAXS4/mtime%3A0/sites/default/files/imagecache/keyart_820x461/article_main_image/what-is-restorative-yoga-647x300.png",
  price: 22,
  address: "Pelican Heights, Cape town",
  capacity: 8,
  user_id: 1,
  sport_id: yoga.id
}])


Participation.create!([{
  event_id: 15,
  user_id: 2,
  status: "going"
},
{
  event_id: 2,
  user_id: 2,
  status: "going"
},
{
  event_id: 15,
  user_id: 3,
  status: "going"
},
{
  event_id: 15,
  user_id: 4,
  status: "going"
},
{
  event_id: 15,
  user_id: 5,
  status: "going"
}]
)

UserSport.create!([{
  user_id: 1,
  sport_id: 2,
  level: "Beginner",
  favourite: true
},
{
  user_id: 1,
  sport_id: 1,
  level: "Beginner",
  favourite: false
}]
)

Post.create!([{
  event_id: 15,
  user_id: 2,
  content: "THIS IS SPARTA!"
},
{
  event_id: 15,
  user_id: 4,
  content: "Hey guys - where exactly will the race take place?"
},
{
  event_id: 15,
  user_id: 3,
  content: "New Rules have been posted to the official website, everybody make sure you've read through them!"
},
{
  event_id: 15,
  user_id: 5,
  content: "Should we bring our own equipment? Also, isn't the weather going to be an issue with all that forecasted rain?"
}]
)

Reply.create!([{
  post_id: 4,
  user_id: 3,
  content: "We don't provide additional equipment - rain sounds perfect for an authentic Spartan Race."
},
{
  post_id: 3,
  user_id: 2,
  content: "Cool - thanks for sharing!"
},
{
  post_id: 2,
  user_id: 5,
  content: "South of Arakawa River. Close to the Saitama Railway."
}]
)

puts "Created #{User.count} users"
puts "Created #{Sport.count} sports"
puts "Created #{Event.count} events"
puts "Created #{Participation.count} participations"
puts "Created #{Post.count} posts"
puts "Created #{Reply.count} replies"
puts "Created #{UserSport.count} UserSports"
