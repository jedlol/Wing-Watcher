# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  #Posts seeds

# image1  = File.read('app/assets/images/profile-image.png')
# image2  = File.read('app/assets/images/wings.jpeg')
# image3  = File.read('app/assets/images/jacque.jpeg')

image1 = Rails.root.join("app/assets/images/profile_default.png").open
image2 = Rails.root.join("app/assets/images/post1.jpeg").open
image3 = Rails.root.join("app/assets/images/profile_jackie.JPG").open
image4 = Rails.root.join("app/assets/images/post2.jpeg").open
image5 = Rails.root.join("app/assets/images/post3.jpeg").open
image6 = Rails.root.join("app/assets/images/post4.jpeg").open
image7 = Rails.root.join("app/assets/images/post5.jpeg").open

user1 = User.create!(
	username: 'Noah MacFerran',
	password: 'password',
	email: 'noah@email.com',
	description: 'I love Wings!',
	image: image1
)

user2 = User.create!(
	username: 'Vu Le',
	password: 'password',
	email: 'vle@email.com',
	description: 'I like Chickens, but Wings',
	image: image1
)

user3 = User.create!(
	username: 'James Brady',
	password: 'password',
	email: 'jbrady@email.com',
	description: 'I love Wings!',
	image: image1
)

user4 = User.create!(
	username: 'Tsui Jacquelyn',
	password: 'password',
	email: 'tjacquelyn@email.com',
	description: 'I love Wings!',
	image: image3
)
#Post 1

post1 = Post.create!(
	date: '4/13/2022',
	review: 'I hated these wings! The sauce was too hot, and I think they are a little burnt. I will never be coming back to Wing Guru again, Dont give them your money!',
	name: 'Hot Wings',
	price: 45.00,
	rating: 1.0,
	image: image5,
	user: user3
)

post1_comment1 = Comment.create!(
    description: 'U R RIGHT!!! This one is AWESOME!',
	user_id: 1,
	post: post1
)

post1_comment2 = Comment.create!(
    description: 'I like it!',
	user_id: 2,
	post: post1
)

#post 2

post2 = Post.create!(
	date: '4/14/2022',
	review: 'These are the best honey-bbq wings Ive ever tasted, the sauce and texure are perfect. I love Chings Hot Wings, and after tasting these honey-bbq wings, I love it even more! You must try these.',
	name: 'Best honey-bbq wings Ive ever tasted!',
	price: 20.00,
	rating: 5.0,
	image: image6,
	user: user3
)

post2_comment1 = Comment.create!(
    description: 'Agree with you',
	user_id: 3,
	post: post2
	
)

Post.create!(
    date: '04/17/2022',
	restaurant: 'Shanghai House',
    review: 'Great one!Tasty Yum!!',
    name: 'Hot Wings',
    price: 14.99,
    rating: 4.0,
    sauce: 'other',
    dish: 'Whole wings',
    image: image2,
    area: 'Southaven',
    user: user4,
	waiting_time: 20
)     

Post.create!(
    date: '02/05/2022',
	restaurant: 'Slim Chicken',
    review: "Very fresh and tender. I'm gonna come back!",
    name: 'FRESH',
    price: 15.35,
    rating: 5,
    sauce: 'Other',
    dish: 'Whole wings',
    image: image4,
    area: 'Barlett',
    user: user2,
	waiting_time: 10
)  

Post.create!(
	date: '05/02/2022',
	restaurant: 'JDs Wings 2 Go',
	review: 'Amazing Wings, JDs never dissapoints!',
	name: 'Can Never Go Wrong With Buffalo Wings From JDs',
	price: 16,
	rating: 4.5,
	sauce: 'Buffalo',
	dish: 'Drums and Flats',
	image: image7,
	area: 'Bartlett',
	user: user1,
	waiting_time: 30
)

Post.create!(
	date: '05/01/2022',
	restaurant: 'Wing-WORLD',
	review: 'great wings, I love WINGWORLD',
	name: 'Can Never Go Wrong With Buffalo Wings From JDs',
	price: 16,
	rating: 4.5,
	sauce: 'Buffalo',
	dish: 'Drums and Flats',
	image: image7,
	area: 'Bartlett',
	user: user1,
	waiting_time: 30
)

SavedPost.create!(
	user: post1.user,
	save_user_id: user1.id,
	post: post1
)
