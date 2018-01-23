###Init - Seed data ########

### User
User.destroy_all
u1 = User.create nickname: 'Alex', email: 'alexpham@gmail.com', location: 'Sydney', password: 'chicken', is_admin: true, image: 'https://cdn0.tnwcdn.com/wp-content/blogs.dir/1/files/2012/10/Food.jpg'

u2 = User.create nickname: 'test1', email: 'test1@gmail.com', location: 'Sydney ', password: 'chicken', is_admin: false, image: 'http://www.thegoodshoppingguide.com/wp-content/uploads/2013/03/pasta.jpg'

u3 = User.create nickname: 'test2', email: 'test2@gmail.com', location: 'North Sydney', password: 'chicken', is_admin: false, image: 'http://www.petacarige.com.au/wp-content/uploads/2014/11/salmon-dish-food-meal-46239.jpeg'

u4 = User.create nickname: 'test3', email: 'test3@gmail.com', location: 'Canberra', password: 'chicken', is_admin: false, image: 'https://static.pexels.com/photos/361184/asparagus-steak-veal-steak-veal-361184.jpeg'

u5 = User.create nickname: 'test4', email: 'test4@gmail.com', location: 'Bondi', password: 'chicken',is_admin: false, image: 'http://bramblebaybowlsclub.com.au/wp-content/uploads/2014/11/chinese_2.jpg'

puts "create #{User.all.length} users "

#### Restaurant ###
Restaurant.destroy_all

r1 = Restaurant.create name: 'Bea, Barangaroo House', address: '
35 Barangaroo Avenue
Barangaroo, NSW 2000', location: 'Sydney', url_website: 'https://www.goodfood.com.au/bea-barangaroo', user_id: u1.id

r2 = Restaurant.create name: 'Hurricane Grill- Darling Harbour', address: 'Shops 433-436, Level 2, Harbourside Shopping Centre, 2-10 Darling Drive, Darling Harbour, Sydney', location: 'Sydney', url_website: 'https://www.zomato.com/sydney/hurricanes-grill-darling-harbour-darling-harbour', user_id:u2.id

r3 = Restaurant.create name: 'Manta Restaurant', address: '6 Cowper Wharf Rdwy  Woolloomooloo, Sydney, New South Wales 2011, Australia', location: 'Sydney', url_website: 'http://mantarestaurant.com.au/', user_id: u3.id

r4 = Restaurant.create name: 'Fish At The Rocks', address: '29 Kent St, Sydney, New South Wales 2000, Australia', location: 'Sydney', url_website: 'http://www.fishattherocks.com.au/', user_id: u4.id

r5 = Restaurant.create name: 'love.fish Barangaroo', address: 'Wulugul Walk, 7/23 Barangaroo Avenue, Wulugul Walk Barangaroo, Sydney, New South Wales 2000 Australia', location: 'Sydney', url_website: 'http://www.lovefish.com.au/', user_id: u5.id

puts "create #{Restaurant.all.length} restaurants "

#### Image ##################
Image.destroy_all

i1 = Image.create title: 'Dinner at Highlands Prime Steakhouse', description: 'Highlands Prime Steakhouse’s Signature Prime Rib, perfectly seasoned and patiently cooked in low temperature then grilled to perfection', image_url: 'https://www.momontimeout.com/wp-content/uploads/2016/01/skillet-monterey-chicken-recipe-hero.jpg', user_id: u1.id , restaurant:r1

i2 = Image.create title: 'salmon', description: 'samon mix salad', image_url: 'https://www.thebalance.com/how-to-create-an-effective-restaurant-menu-2888585?utm_source=pinterest', user_id: u2.id ,restaurant: r2

i3 = Image.create title: 'sushi', description: 'mix sushi ', image_url: 'https://fthmb.tqn.com/GIq8wTEYO132GaGtGeZPboGCB8c=/768x0/filters:no_upscale()/GettyImages-550046563-575df0105f9b58f22e4216bb.jpg', user_id:u3.id ,restaurant:r3

i4 = Image.create title: 'fish and chip', description: 'fish and chip', image_url: 'https://fthmb.tqn.com/PUtwwWiKbQv04gwiD_GPh8tW7g0=/768x0/filters:no_upscale()/herrings-1204669_1920-56cb16c03df78cfb379a6b4e.jpg', user_id:u4.id ,restaurant:r4

i5 = Image.create title: 'WARM THAI BEEF SALAD', description: 'Spanish onion, capsicum, cherry tomatoes and crispy noodles, caramelised cashews with a spicy Thai dressing', image_url: 'http://img.taste.com.au/jXo3mTmV/taste/2016/11/thai-beef-salad-20774-1.jpeg', user_id: u5.id ,restaurant:r5

i6 = Image.create title: 'RACK OF PORK RIBS', description: 'Served with skinny fries and Greek salad', image_url: 'https://www.tasteofthesouthmagazine.com/wp-content/uploads/2014/12/Herb-Stuffed-Pork-Rib-Roast.gif', user_id: u1.id ,restaurant: r2
#
i7 = Image.create title: 'GAMBERI LINGUINI', description: 'not yet', image_url: 'https://cdn.ricettedigusto.info/2015/06/linguine-ai-gamberi.jpg', user_id: u1.id ,restaurant: r3
#
# i8 = Image.create title: '', description: '', image_url: '', user_id: ,restaurant_id:
#
# i9 = Image.create title: '', description: '', image_url: '', user_id: ,restaurant_id:
#
# i10 = Image.create title: '', description: '', image_url: '', user_id: ,restaurant_id:

puts "create #{Image.all.length} images "

#### Review  ########
Review.destroy_all

re1 = Review.create title: 'Food', body: 'Nice food', rating: '3.1', user: u1 , restaurant: r1

re2 = Review.create title: 'Services', body: 'Good service', rating: '4.5', user: u2 , restaurant: r2

re3 = Review.create title: 'Food', body: 'Good food', rating: '5', user: u3 , restaurant: r3

re4 = Review.create title: 'Food', body: 'very good food', rating: '4.5', user: u4 , restaurant: r4

re5 = Review.create title: ' Services', body: 'Very dood service', rating: '1.5', user: u5 , restaurant: r5

# re6 = Review.create title: '', body: '', rating: '', user_id: , restaurant_id:
#
# re7 = Review.create title: '', body: '', rating: '', user_id: , restaurant_id:
#
# re8 = Review.create title: '', body: '', rating: '', user_id: , restaurant_id:
#
# re9 = Review.create title: '', body: '', rating: '', user_id: , restaurant_id:
#
# re10 = Review.create title: '', body: '', rating: '', user_id: , restaurant_id:

puts "create #{Review.all.length} reviews "

#### Comment #######
Comment.destroy_all

c1 = Comment.create body: 'Gooood', user: u1, review: re1

c2 = Comment.create body: 'ok', user: u2 , review: re2

c3 = Comment.create body: 'nice', user: u3 , review: re3

c4 = Comment.create body: 'nice', user: u1 , review: re2

c5 = Comment.create body: 'ok', user: u1 , review: re3

c6 = Comment.create body: 'good', user: u2 , review: re2

c7 = Comment.create body: 'so good to be true', user: u3 , review: re3

c8 = Comment.create body: 'oh yeah', user: u4 , review: re1

c9 = Comment.create body: 'ok cool', user: u2 , review: re5

c10 = Comment.create body: 'nice', user: u3 , review: re4

puts "create #{Comment.all.length} comments "
