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
Barangaroo, NSW 2000', location: 'Sydney', url_website: 'https://www.goodfood.com.au/bea-barangaroo', user: u1

r2 = Restaurant.create name: 'Hurricane Grill- Darling Harbour', address: 'Shops 433-436, Level 2, Harbourside Shopping Centre, 2-10 Darling Drive, Darling Harbour, Sydney', location: 'Sydney', url_website: 'https://darlingharbour.hurricanesgrill.com.au/', user: u2

r3 = Restaurant.create name: 'Manta Restaurant', address: '6 Cowper Wharf Rdwy  Woolloomooloo, Sydney, New South Wales 2011, Australia', location: 'Sydney', url_website: 'http://mantarestaurant.com.au/', user: u3

r4 = Restaurant.create name: 'Fish At The Rocks', address: '29 Kent St, Sydney, New South Wales 2000, Australia', location: 'Sydney', url_website: 'http://www.fishattherocks.com.au/', user: u4

r5 = Restaurant.create name: 'love.fish Barangaroo', address: 'Wulugul Walk, 7/23 Barangaroo Avenue, Wulugul Walk Barangaroo, Sydney, New South Wales 2000 Australia', location: 'Sydney', url_website: 'http://www.lovefish.com.au/', user: u5

r6 = Restaurant.create name: 'Brunetti Flinders Lane', address: '250 Flinders Ln Melbourne, VIC 3000',location: 'Melbourne', url_website: 'http://brunetti.com.au/', user: u1

r7 = Restaurant.create name: 'Bamiyan Restaurant Canberra', address: '62 10 Lonsdale St Braddon, ACT 2612',location: 'Canberra', url_website: 'https://bamiyanrestaurant.com.au/', user: u2

r8 = Restaurant.create name: 'Bondi Beach Public Bar', address: '203 180 Campbell Parade Bondi Beach, NSW 2026',location: 'Sydney', url_website: 'https://bbpb.com.au/', user: u2

r9 = Restaurant.create name: 'Gourmet Paddock', address: '2 8 Russell St Balnarring, VIC 3926',location: 'Melbourne', url_website: 'http://www.gourmetpaddock.com.au/', user: u1

r10 = Restaurant.create name: 'Mama Manoush', address: '
175-177 Lygon St Brunswick East, VIC 3057',location: 'Melbourne', url_website: 'https://www.mamamanoush.com.au/', user: u1

r11 = Restaurant.create name: 'Tolarno Eating House and Bar', address: '42 Fitzroy St St Kilda, VIC 3182',location: 'Melbourne', url_website: 'https://www.tolarnoeatinghouse.com.au/', user: u4

r12 = Restaurant.create name: 'Mister Nguyen', address: '
133 Lower Plenty Rd Rosanna, VIC 3084',location: 'Melbourne', url_website: 'http://www.misternguyen.com.au/', user: u1

r13 = Restaurant.create name: 'Gold Moon', address: '26 34 Church St Brighton, VIC 3186',location: 'Melbourne', url_website: 'https://www.goldmoon.com.au/', user: u1

r14 = Restaurant.create name: 'RAKU', address: '148 Bunda St Canberra, ACT 2601',location: 'Canberra', url_website: 'http://rakudining.com.au/', user: u1

r15 = Restaurant.create name: 'Longsong', address: '40-44 Little Bourke St Melbourne, VIC 3000', location: 'Melbourne', url_website: 'http://www.longsong.com.au/', user: u1

puts "create #{Restaurant.all.length} restaurants "

#### Image ##################
Image.destroy_all

i1 = Image.create title: 'Dinner at Highlands Prime Steakhouse', description: 'Highlands Prime Steakhouse’s Signature Prime Rib, perfectly seasoned and patiently cooked in low temperature then grilled to perfection', image_url: 'https://www.momontimeout.com/wp-content/uploads/2016/01/skillet-monterey-chicken-recipe-hero.jpg', user: u1 , restaurant:r1

i2 = Image.create title: 'salmon', description: 'samon mix salad', image_url: 'https://www.thebalance.com/how-to-create-an-effective-restaurant-menu-2888585?utm_source=pinterest', user: u2 ,restaurant: r2

i3 = Image.create title: 'sushi', description: 'mix sushi ', image_url: 'https://fthmb.tqn.com/GIq8wTEYO132GaGtGeZPboGCB8c=/768x0/filters:no_upscale()/GettyImages-550046563-575df0105f9b58f22e4216bb.jpg', user_id: u3 ,restaurant:r3

i4 = Image.create title: 'fish and chip', description: 'fish and chip', image_url: 'https://fthmb.tqn.com/PUtwwWiKbQv04gwiD_GPh8tW7g0=/768x0/filters:no_upscale()/herrings-1204669_1920-56cb16c03df78cfb379a6b4e.jpg', user: u4 ,restaurant:r4

i5 = Image.create title: 'WARM THAI BEEF SALAD', description: 'Spanish onion, capsicum, cherry tomatoes and crispy noodles, caramelised cashews with a spicy Thai dressing', image_url: 'http://img.taste.com.au/jXo3mTmV/taste/2016/11/thai-beef-salad-20774-1.jpeg', user: u5 ,restaurant:r5

i6 = Image.create title: 'RACK OF PORK RIBS', description: 'Served with skinny fries and Greek salad', image_url: 'https://www.tasteofthesouthmagazine.com/wp-content/uploads/2014/12/Herb-Stuffed-Pork-Rib-Roast.gif', user: u1 ,restaurant: r2

i7 = Image.create title: 'GAMBERI LINGUINI', description: 'not yet', image_url: 'https://cdn.ricettedigusto.info/2015/06/linguine-ai-gamberi.jpg', user: u1 ,restaurant: r3

i8 = Image.create title: 'Dry aged grass fed beef rib', description: 'Dry aged grass fed beef rib', image_url: 'http://bentlyranch.com/images/beef_3.jpg', user: u1 ,restaurant: r12

i9 = Image.create title: 'Nama Kaki', description: 'Nama kaki (fresh raw oyster) very good the size was big too', image_url: 'http://cdnkualalumpur.intercontinental.com/uploads/promotion/_billboard_superwide_2016/nama-kaki-2014-large.jpg', user: u1, restaurant: r15

i10 = Image.create title: 'Gyuu Tataki', description: 'Seared 150-day angus beef strip-loin w black truffle dressing, 19.0 pickled onion & garlic chips', image_url: 'https://a8g4i9g5y.ssl.hwcdn.net/files/styles/hd_two_row_landscape/public/image/d4/f7/70784-gyuu-tataki.jpg', user: u1 ,restaurant: r14

i11 = Image.create title: 'Ebi Tempura', description: 'Crispy Western Australian prawn, tenkatsu, chilli mayonnaise, cucumber, avocado', image_url: 'http://www.manilafoodandtravel.com/wp-content/uploads/2010/09/EbiTempuraTeishoku3.gif', user: u3 ,restaurant: r13

i12 = Image.create title: 'Steamed Abalone with Dried Orange Peel', description: 'Steamed Abalone with Dried Orange Peel', image_url: 'https://farm8.staticflickr.com/7429/13951832719_39c7d28423.jpg', user: u4 ,restaurant: r11

i13 = Image.create title: 'Gold Moon Stir Fried Seafood Combination', description: 'Gold Moon Stir Fried Seafood Combination', image_url: 'http://farm8.staticflickr.com/7002/6676268075_9f59055481_z.jpg', user: u3 ,restaurant: r10

i14 = Image.create title: 'Salt And Pepper Squid', description: 'Salt And Pepper Squid', image_url: 'http://d3lp4xedbqa8a5.cloudfront.net/s3/digital-cougar-assets/food/2015/05/05/99794fc6-ffff-46bf-a0dd-a24b0091788a/salt-and-pepper-squid-with-cucumber-salad.jpg', user: u2, restaurant: r14

i15 = Image.create title: 'Pinnacle Mb2+ Porterhouse 250gram with beef bone just, bone marrow butter, and onion rings ', description: 'Pinnacle Mb2+ Porterhouse 250gram with beef bone just, bone marrow butter, and onion rings ', image_url: 'https://www.reluctantgourmet.com/wp-content/uploads/2012/09/fbce18293084d3ac0d97e393ad7b6ff7.jpg', user: u1 ,restaurant: r13

puts "create #{Image.all.length} images "

#### Review  ########
Review.destroy_all

re1 = Review.create title: 'Food', body: 'Wet the Baby head with a bottomless mimosa over brunch', rating: '3.1', user: u1 , restaurant: r1

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
