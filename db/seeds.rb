User.delete_all
Sport.delete_all
Participation.delete_all
UserSport.delete_all


User.create!([{
  email: "test1@example.com",
  password: "123456",
  first_name: "Kevin",
  last_name: "Merkel",
  remote_photo_url: "https://www.ienglishstatus.com/wp-content/uploads/2018/04/Anonymous-Whatsapp-profile-picture.jpg"
},
{
  email: "test2@example.com",
  password: "123456",
  first_name: "Melissa",
  last_name: "The Unicorn",
  remote_photo_url: "https://resources.stuff.co.nz/content/dam/images/1/o/x/y/w/d/image.related.StuffLandscapeSixteenByNine.620x349.1oy3iq.png/1521752816572.jpg"
},
{
  email: "test3@example.com",
  password: "123456",
  first_name: "Ed",
  last_name: "The Dear",
  remote_photo_url: "https://www.celebrity-cutouts.co.uk/wp-content/uploads/2017/02/shaquille-oneal-celebrity-mask.jpg"
}])

Sport.create!([
{
  category: "local adventure",
  photo: "http://molescreenpdt.com.au/wp-content/uploads/2015/12/Outdoor-Sports-1440-900-widescreen-56450.jpg"
},
{
  category: "running",
  photo: "https://cdn10.phillymag.com/wp-content/uploads/sites/3/2017/03/running-group-istock-940x540.jpg"
},
{
  category: "teamsports",
  photo: "https://thegamehaus.com/wp-content/uploads/2016/12/team-sports.jpg"
},
{
  category: "fitness",
  photo: "https://landerapp.com/blog/wp-content/uploads/2018/07/6f66fc0ee89eac4cb13eceae9bf66242.jpeg"
},
{
  category: "yoga",
  photo: "http://whitneypeakhotel.com/wp-content/uploads/2016/11/AdobeStock_107892322-800x533.jpeg"
},
{
  category: "racket sports",
  photo: "https://well.pk/blog/wp-content/uploads/2015/09/Navarino-Racquet-Academy-1-1200x703.jpg",
}])


Event.create!([{
  title: "Pingpong tournament",
  description: "Show us your Ping-Pong skills with our double elimination tournament! Tournament open to everyone, and winner will receive a 50€ gift card from Le Wagon",
  date: "20.09.2018",
  intensity: 2,
  remote_photo_url: "http://www.keepintheloop.uk/wp-content/uploads/2016/04/heroes-1920x960-1.jpg",
  price: 5,
  address: "Tempelhofer Feld, Berlin",
  capacity: 100,
  user_id: 1,
  sport_id: 1
},
{
  title: "Skiing down La Vallée Blanche",
  description: "20km offpiste on the longest glacier in Europe - with a professionnal mountain guide from the valley",
  date: "20.12.2018",
  intensity: 4,
  remote_photo_url: "https://www.wantedinrome.com/i/preview/storage/uploads/2015/02/skiing-86491418.jpg",
  price: 5,
  address: "Chamonix, France",
  capacity: 6,
  user_id: 2,
  sport_id: 1
},
{
  title: "Muay Thai boxing bootcamp",
  description: "Muay Thai is an AWESOME workout that gets you fitter and healthier, whilst teaching you street effective self-defence skills.",
  date: "10.10.2018",
  intensity: 4,
  remote_photo_url: "http://www.bettingsites.us/wp-content/uploads/box-1024x683.jpg",
  price: 5,
  address: "Segitzdamm 40, Berlin",
  capacity: 15,
  user_id: 3,
  sport_id: 4
},
{
  title: "Muay Thai boxing bootcamp",
  description: "Muay Thai is an AWESOME workout that gets you fitter and healthier, whilst teaching you street effective self-defence skills.",
  date: "10.10.2018",
  intensity: 4,
  remote_photo_url: "http://www.bettingsites.us/wp-content/uploads/box-1024x683.jpg",
  price: 5,
  address: "Urbanstrasse 20, Berlin",
  capacity: 15,
  user_id: 3,
  sport_id: 1
},
{
  title: "Canoeing tour",
  description: "The spree river and its numerous canals run through many famous sights in Berlin such as the TV-tower, the Molecule Men or the Oberbaum-Bridge. Paddle with us through Berlin and be surprised by the wonderful scene!",
  date: "08.09.2018",
  intensity: 2,
  remote_photo_url: "https://berlinonbike.de/wp-content/gallery/canoe/berlin-boat-tour-canoe-alex-tv-tower.jpg",
  price: 0,
  address: "Leipzigerstrasse 10, Berlin",
  capacity: 15,
  user_id: 1,
  sport_id: 1
},
{
  title: "Swimming competition",
  description: "5km swim race in open-waters across the Wannsee lake",
  date: "28.08.2018",
  intensity: 5,
  remote_photo_url: "https://www.dctriclub.org/wp-content/uploads/2017/01/DCTri_2016TrainingTri.jpg",
  price: 5,
  address: "Wannsee, Berlin",
  capacity: 200,
  user_id: 1,
  sport_id: 4
},
{
  title: "Skiing down La Vallée Blanche",
  description: "20km offpiste on the longest glacier in Europe - with a professionnal mountain guide from the valley",
  date: "20.12.2018",
  intensity: 4,
  remote_photo_url: "https://www.wantedinrome.com/i/preview/storage/uploads/2015/02/skiing-86491418.jpg",
  price: 5,
  address: "Chamonix, France",
  capacity: 6,
  user_id: 2,
  sport_id: 1
},
{
  title: "Pingpong tournament",
  description: "Show us your Ping-Pong skills with our double elimination tournament! Tournament open to everyone, and winner will receive a 50€ gift card from Le Wagon",
  date: "20.09.2018",
  intensity: 2,
  remote_photo_url: "https://cdn.funcheap.com/wp-content/uploads/2013/01/old-school-tiger_grande.jpg",
  price: 0,
  address: "Templehofer Feld, Berlin",
  capacity: 100,
  user_id: 1,
  sport_id: 3
},
{
  title: "Skiing down La Vallée Blanche",
  description: "20km offpiste on the longest glacier in Europe - with a professionnal mountain guide from the valley",
  date: "20.12.2018",
  intensity: 4,
  remote_photo_url: "https://www.wantedinrome.com/i/preview/storage/uploads/2015/02/skiing-86491418.jpg",
  price: 5,
  address: "Chamonix, France",
  capacity: 6,
  user_id: 2,
  sport_id: 5
},
{
  title: "Berlin Marathon 2018",
  description: "42km through the capital of Germany. This year we're celebrating the 45th edition of the Berlin Marathon. Are you up for the challenge?",
  date: "16.09.2018",
  intensity: 4,
  remote_photo_url: "https://scontent-amt2-1.xx.fbcdn.net/v/t34.0-12/22657256_711424852381247_1302883672_n.jpg?_nc_cat=0&oh=cde56c0d71643601bebf8514dbf41cb3&oe=5B7F9FD7",
  price: 95,
  address: "Berlin, Germany",
  capacity: 10_000,
  user_id: 2,
  sport_id: 2
},
{
  title: "Crossfit WOD",
  description: "Weekly workout in Kreuzberg. All equipment provided on site!",
  date: "12.09.2018",
  intensity: 4,
  remote_photo_url: "https://customersuccessbox.com/blog/wp-content/uploads/2017/05/Customer-Success-by-building-Product-Stickiness.jpg",
  price: 95,
  address: "Berlin, Turmstrasse 100",
  capacity: 10_000,
  user_id: 2,
  sport_id: 4
},
{
  title: "Functional training",
  description: "Let's get together for a functional workout! No equipment needed, we will work with our own bodyweight. Appropriate for begginers and advanced people!",
  date: "21.09.2018",
  intensity: 3,
  remote_photo_url: "https://drummondeducation.com/wp-content/uploads/2015/07/715-outdoor-fitness-copy-.jpg",
  price: 0,
  address: "Berlin, Treptower Park",
  capacity: 10_000,
  user_id: 2,
  sport_id: 5
},
{
  title: "Spartan Race Berlin",
  description: "Obstacle Course Race comes to Berlin again! Pick between Sprint, Super and Beast - all do them all! ",
  date: "29.09.2018",
  intensity: 4,
  remote_photo_url: "https://scontent-amt2-1.xx.fbcdn.net/v/t1.0-9/37407117_1779824532101894_2518401911355342848_n.jpg?_nc_cat=0&oh=7fc78f0c9dcfa1e234b1cca9e02b933c&oe=5C38D942",
  price: 0,
  address: "Berlin, Museumsstraße 1, Schorfheide",
  capacity: 10_000,
  user_id: 2,
  sport_id: 4
},
{
  title: "Pingpong tournament",
  description: "Show us your Ping-Pong skills with our double elimination tournament! Tournament open to everyone, and winner will receive a 50€ gift card from Le Wagon",
  date: "20.09.2018",
  intensity: 2,
  remote_photo_url: "http://www.keepintheloop.uk/wp-content/uploads/2016/04/heroes-1920x960-1.jpg",
  price: 5,
  address: "Templehof, Berlin",
  capacity: 100,
  user_id: 1,
  sport_id: 6
},
{
  title: "Skiing down La Vallée Blanche",
  description: "20km offpiste on the longest glacier in Europe - with a professionnal mountain guide from the valley",
  date: "20.12.2018",
  intensity: 4,
  remote_photo_url: "https://www.wantedinrome.com/i/preview/storage/uploads/2015/02/skiing-86491418.jpg",
  price: 5,
  address: "Chamonix, France",
  capacity: 6,
  user_id: 2,
  sport_id: 5
},
{
  title: "Muay Thai boxing bootcamp",
  description: "Muay Thai is an AWESOME workout that gets you fitter and healthier, whilst teaching you street effective self-defence skills.",
  date: "10.10.2018",
  intensity: 4,
  remote_photo_url: "http://www.bettingsites.us/wp-content/uploads/box-1024x683.jpg",
  price: 5,
  address: "Segitzdamm 40, Berlin",
  capacity: 15,
  user_id: 3,
  sport_id: 5
},
{
  title: "Muay Thai boxing bootcamp",
  description: "Muay Thai is an AWESOME workout that gets you fitter and healthier, whilst teaching you street effective self-defence skills.",
  date: "10.10.2018",
  intensity: 4,
  remote_photo_url: "http://www.bettingsites.us/wp-content/uploads/box-1024x683.jpg",
  price: 5,
  address: "Urbanstrasse 20, Berlin",
  capacity: 15,
  user_id: 3,
  sport_id: 3
},
{
  title: "Canoeing tour",
  description: "The spree river and its numerous canals run through many famous sights in Berlin such as the TV-tower, the Molecule Men or the Oberbaum-Bridge. Paddle with us through Berlin and be surprised by the wonderful scene!",
  date: "08.09.2018",
  intensity: 2,
  remote_photo_url: "https://berlinonbike.de/wp-content/gallery/canoe/berlin-boat-tour-canoe-alex-tv-tower.jpg",
  price: 0,
  address: "Leipzigerstrasse 10, Berlin",
  capacity: 15,
  user_id: 1,
  sport_id: 6
},
{
  title: "Swimming competition ",
  description: "5km swim race in open-waters across the Wannsee lake",
  date: "28.08.2018",
  intensity: 5,
  remote_photo_url: "https://www.dctriclub.org/wp-content/uploads/2017/01/DCTri_2016TrainingTri.jpg",
  price: 5,
  address: "Wannsee, Berlin",
  capacity: 200,
  user_id: 1,
  sport_id: 3
},
{
  title: "Skiing down La Vallée Blanche",
  description: "20km offpiste on the longest glacier in Europe - with a professionnal mountain guide from the valley",
  date: "20.12.2018",
  intensity: 4,
  remote_photo_url: "https://www.wantedinrome.com/i/preview/storage/uploads/2015/02/skiing-86491418.jpg",
  price: 5,
  address: "Chamonix, France",
  capacity: 6,
  user_id: 2,
  sport_id: 4
},
{
  title: "Pingpong tournament",
  description: "Show us your Ping-Pong skills with our double elimination tournament! Tournament open to everyone, and winner will receive a 50€ gift card from Le Wagon",
  date: "20.09.2018",
  intensity: 2,
  remote_photo_url: "https://cdn.funcheap.com/wp-content/uploads/2013/01/old-school-tiger_grande.jpg",
  price: 0,
  address: "Templehofer Feld, Berlin",
  capacity: 100,
  user_id: 1,
  sport_id: 6
},
{
  title: "Skiing down La Vallée Blanche",
  description: "20km offpiste on the longest glacier in Europe - with a professionnal mountain guide from the valley",
  date: "20.12.2018",
  intensity: 4,
  remote_photo_url: "https://www.wantedinrome.com/i/preview/storage/uploads/2015/02/skiing-86491418.jpg",
  price: 5,
  address: "Chamonix, France",
  capacity: 6,
  user_id: 2,
  sport_id: 1
},
{
  title: "Berlin Marathon 2018",
  description: "42km through the capital of Germany. This year we're celebrating the 45th edition of the Berlin Marathon. Are you up for the challenge?",
  date: "16.09.2018",
  intensity: 4,
  remote_photo_url: "https://scontent-amt2-1.xx.fbcdn.net/v/t34.0-12/22657256_711424852381247_1302883672_n.jpg?_nc_cat=0&oh=cde56c0d71643601bebf8514dbf41cb3&oe=5B7F9FD7",
  price: 95,
  address: "Berlin, Germany",
  capacity: 10_000,
  user_id: 2,
  sport_id: 4
},
{
  title: "Crossfit WOD",
  description: "Weekly workout in Kreuzberg. All equipment provided on site!",
  date: "12.09.2018",
  intensity: 4,
  remote_photo_url: "https://customersuccessbox.com/blog/wp-content/uploads/2017/05/Customer-Success-by-building-Product-Stickiness.jpg",
  price: 95,
  address: "Berlin, Turmstrasse 100",
  capacity: 10_000,
  user_id: 2,
  sport_id: 3
},
{
  title: "Functional training",
  description: "Let's get together for a functional workout! No equipment needed, we will work with our own bodyweight. Appropriate for begginers and advanced people!",
  date: "21.09.2018",
  intensity: 3,
  remote_photo_url: "https://drummondeducation.com/wp-content/uploads/2015/07/715-outdoor-fitness-copy-.jpg",
  price: 0,
  address: "Berlin, Treptower Park",
  capacity: 10_000,
  user_id: 2,
  sport_id: 6
},
{
  title: "Spartan Race Berlin",
  description: "Obstacle Course Race comes to Berlin again! Pick between Sprint, Super and Beast - all do them all! ",
  date: "29.09.2018",
  intensity: 4,
  remote_photo_url: "https://scontent-amt2-1.xx.fbcdn.net/v/t1.0-9/37407117_1779824532101894_2518401911355342848_n.jpg?_nc_cat=0&oh=7fc78f0c9dcfa1e234b1cca9e02b933c&oe=5C38D942",
  price: 0,
  address: "Berlin, Museumsstraße 1, Schorfheide",
  capacity: 10_000,
  user_id: 2,
  sport_id: 2
}
]
)

Participation.create!([{
  event_id: 1,
  user_id: 1,
  status: "going"
},
{
  event_id: 5,
  user_id: 1,
  status: "interested"
},
{
  event_id: 6,
  user_id: 1,
  status: "going"
}]
)

UserSport.create!([{
  user_id: 1,
  sport_id: 2,
  level: 5,
  favourite: true
},
{
  user_id: 1,
  sport_id: 1,
  level: 1,
  favourite: false
}]
)

Post.create!([{
  event_id: 1,
  user_id: 2,
  content: "Hey guys! Should we bring our own equipment? Also, isn't the weather going to be an issue with all that forecasted snow?"
},
{
  event_id: 1,
  user_id: 1,
  content: "New Rules have been posted to the official website, everybody make sure you've read through them!"
},
{
  event_id: 2,
  user_id: 1,
  content: "Hey guys! Should we bring our own equipment? Also, isn't the weather going to be an issue with all that forecasted snow?"
},
{
  event_id: 2,
  user_id: 2,
  content: "New Rules have been posted to the official website, everybody make sure you've read through them!"
},
{
  event_id: 3,
  user_id: 3,
  content: "Hey guys! Should we bring our own equipment? Also, isn't the weather going to be an issue with all that forecasted snow?"
},
{
  event_id: 3,
  user_id: 1,
  content: "New Rules have been posted to the official website, everybody make sure you've read through them!"
},
{
  event_id: 4,
  user_id: 2,
  content: "Hey guys! Should we bring our own equipment? Also, isn't the weather going to be an issue with all that forecasted snow?"
},
{
  event_id: 4,
  user_id: 3,
  content: "New Rules have been posted to the official website, everybody make sure you've read through them!"
},
{
  event_id: 5,
  user_id: 2,
  content: "Hey guys! Should we bring our own equipment? Also, isn't the weather going to be an issue with all that forecasted snow?"
},
{
  event_id: 6,
  user_id: 1,
  content: "New Rules have been posted to the official website, everybody make sure you've read through them!"
}]
)

Reply.create!([{
  post_id: 1,
  user_id: 3,
  content: "Whatever! Snow, rain, i'll power through! You should always bring your own equipment!"
},
{
  post_id: 1,
  user_id: 2,
  content: "Alright! See you at the event then!"
},
{
  post_id: 3,
  user_id: 3,
  content: "No, don't worry, everything will be provided. Just bring fun!"
},
{
  post_id: 5,
  user_id: 1,
  content: "That's fine! Do you guys know if i can easily get to Kreuzberg afterwards?"
},
{
  post_id: 8,
  user_id: 2,
  content: "The information you're looking for is in the event details."
}]
)









