User.delete_all
Sport.delete_all
Participation.delete_all


User.create!([{
  email: "test1@example.com",
  password: "123456",
  first_name: "Kevin",
  last_name: "Merkel",
  remote_photo_url: "https://fr.depositphotos.com/59095529/stock-illustration-profile-icon-male-avatar.html"
},
{
  email: "test2@example.com",
  password: "123456",
  first_name: "Melissa",
  last_name: "The Unicorn",
  remote_photo_url: "http://profilepicturesdp.com/best-avatar-profile-pictures-6/"
},
{
  email: "test3@example.com",
  password: "123456",
  first_name: "Ed",
  last_name: "The Dear",
  remote_photo_url: "https://fr.depositphotos.com/59095529/stock-illustration-profile-icon-male-avatar.html"
}])

Sport.create!([{
  category: "racket sports",
  photo: "https://well.pk/blog/wp-content/uploads/2015/09/Navarino-Racquet-Academy-1-1200x703.jpg",
},
{
  category: "local adventure",
  photo: "http://molescreenpdt.com.au/wp-content/uploads/2015/12/Outdoor-Sports-1440-900-widescreen-56450.jpg"
},
{
  category: "teamsports",
  photo: "https://thegamehaus.com/wp-content/uploads/2016/12/team-sports.jpg"
},
{
  category: "running",
  photo: "https://cdn10.phillymag.com/wp-content/uploads/sites/3/2017/03/running-group-istock-940x540.jpg"
},
{
  category: "fitness",
  photo: "https://landerapp.com/blog/wp-content/uploads/2018/07/6f66fc0ee89eac4cb13eceae9bf66242.jpeg"
},
{
  category: "yoga",
  photo: "http://whitneypeakhotel.com/wp-content/uploads/2016/11/AdobeStock_107892322-800x533.jpeg"
}])


Event.create!([{
  title: "Pingpong tournament",
  description: "Show us your Ping-Pong skills with our double elimination tournament! Tournament open to everyone, and winner will receive a 50€ gift card from Le Wagon",
  date: "20.09.2018",
  intensity: 2,
  remote_photo_url: "https://cdn.funcheap.com/wp-content/uploads/2013/01/old-school-tiger_grande.jpg",
  price: 5,
  location: "Templehof, Berlin"
  capacity: 100,
  user_id: 1,
  sport_id: 1,
},
{
  title: "Skiing down La Vallée Blanche",
  description: "20km offpiste on the longest glacier in Europe - with a professionnal mountain guide from the valley",
  date: "20.12.2018",
  intensity: 4,
  remote_photo_url: "http://www.guides-megeve.com/media/min/Vallee_blanche_1760_1024x768_maxprod.jpg",
  price: 5,
  location: "Chamonix, France"
  capacity: 6,
  user_id: 2,
  sport_id: 2,

},
{
  title: "Muay Thai boxing bootcamp",
  description: "Muay Thai is an AWESOME workout that gets you fitter and healthier, whilst teaching you street effective self-defence skills.",
  date: "10.10.2018",
  intensity: 4,
  remote_photo_url: "http://www.bettingsites.us/wp-content/uploads/box-1024x683.jpg",
  price: 5,
  location: "Neuköln, Berlin"
  capacity: 15,
  user_id: 3,
  sport_id: 3,

}])
