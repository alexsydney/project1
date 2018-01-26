###Init - Seed data ########

### User
User.destroy_all
u1 = User.create nickname: 'Mule Skinner', email: 'alexpham@gmail.com', location: 'Sydney', password: 'chicken', is_admin: true, image: 'https://cdn0.tnwcdn.com/wp-content/blogs.dir/1/files/2012/10/Food.jpg'

u2 = User.create nickname: 'Turnip King', email: 't1@gmail.com', location: 'Sydney ', password: 'chicken', is_admin: false, image: 'http://www.thegoodshoppingguide.com/wp-content/uploads/2013/03/pasta.jpg'

u3 = User.create nickname: 'Grave Digger', email: 't2@gmail.com', location: 'North Sydney', password: 'chicken', is_admin: false, image: 'http://www.petacarige.com.au/wp-content/uploads/2014/11/salmon-dish-food-meal-46239.jpeg'

u4 = User.create nickname: 'High Kingdom Warrior', email: 't3@gmail.com', location: 'Canberra', password: 'chicken', is_admin: false, image: 'https://static.pexels.com/photos/361184/asparagus-steak-veal-steak-veal-361184.jpeg'

u5 = User.create nickname: 'Highlander Monk', email: 't4@gmail.com', location: 'Bondi', password: 'chicken',is_admin: false, image: 'http://bramblebaybowlsclub.com.au/wp-content/uploads/2014/11/chinese_2.jpg'

puts "create #{User.all.length} users "

#### Restaurant ###
Restaurant.destroy_all

r1 = Restaurant.create name: 'Bea, Barangaroo House', address: '
35 Barangaroo Avenue
Barangaroo, NSW 2000', location: 'Sydney', url_website: 'https://www.barangaroohouse.com.au/bea-restaurant/', user: u1

r2 = Restaurant.create name: 'Hurricane Grill- Darling Harbour', address: 'Shops 433-436, Level 2, Harbourside Shopping Centre, 2-10 Darling Drive, Darling Harbour, Sydney', location: 'Sydney', url_website: 'https://darlingharbour.hurricanesgrill.com.au/', user: u2

r3 = Restaurant.create name: 'Manta Restaurant', address: '6 Cowper Wharf Rdwy  Woolloomooloo, Sydney, New South Wales 2011, Australia', location: 'Sydney', url_website: 'http://mantarestaurant.com.au/', user: u3

r4 = Restaurant.create name: 'Fish At The Rocks', address: '29 Kent St, Sydney, New South Wales 2000, Australia', location: 'Sydney', url_website: 'http://www.fishattherocks.com.au/', user: u4

r5 = Restaurant.create name: 'love.fish Barangaroo', address: 'Wulugul Walk, 7/23 Barangaroo Avenue, Wulugul Walk Barangaroo, Sydney, New South Wales 2000 Australia', location: 'Sydney', url_website: 'http://www.lovefish.com.au/', user: u5

r6 = Restaurant.create name: 'The Australian Hotel', address: '100 Cumberland St, The Rocks NSW 2000',location: 'Sydney', url_website: 'http://australianheritagehotel.com/', user: u1

r7 = Restaurant.create name: 'Sydney Tower Buffet', address: '100 Market st, Sydney 2000',location: 'Sydney', url_website: 'https://www.sydneytowerbuffet.com.au/', user: u2

r8 = Restaurant.create name: 'Bondi Beach Public Bar', address: '203 180 Campbell Parade Bondi Beach, NSW 2026',location: 'Sydney', url_website: 'https://bbpb.com.au/', user: u2

r9 = Restaurant.create name: 'Hard Rock', address: '10 Darling Dr, Sydney NSW 2000',location: 'Sydney', url_website: 'http://www.hardrock.com/cafes/sydney/', user: u1

r10 = Restaurant.create name: 'Munich Brauhaus', address: '33 Playfair St, Sydney, NSW 2000',location: 'Sydney', url_website: 'http://www.munichbrauhaus.com/', user: u1

r11 = Restaurant.create name: '678 Sydney – Korean BBQ Restaurant', address: '396 Pitt corner Goulburn Street, Sydney, NSW 2000',location: 'Sydey', url_website: 'http://www.678kbbq.com/', user: u4

r12 = Restaurant.create name: 'Hubert', address: '15 BLIGH STREET, SYDNEY ',location: 'Sydney', url_website: 'http://restauranthubert.com/', user: u1
 2000

r13 = Restaurant.create name: 'Ester Restaurant and Bar', address: '52 meagher st chippendale, NSW 2008',location: 'Sydney', url_website: 'http://www.ester-restaurant.com.au/', user: u1

r14 = Restaurant.create name: 'Momofuku Seiobo', address: '80 Pyrmont St, Pyrmont NSW 2009',location: 'Sydney', url_website: 'http://rakudining.com.au/', user: u1

r15 = Restaurant.create name: 'Saint Peter', address: '362 Oxford St, Paddington NSW 2021', location: 'Sydney', url_website: 'http://www.saintpeter.com.au/', user: u1

puts "create #{Restaurant.all.length} restaurants "

#### Image ##################
Image.destroy_all

i1 = Image.create title: 'Dinner at Highlands Prime Steakhouse', description: 'Highlands Prime Steakhouse’s Signature Prime Rib, perfectly seasoned and patiently cooked in low temperature then grilled to perfection', image_url: 'https://www.momontimeout.com/wp-content/uploads/2016/01/skillet-monterey-chicken-recipe-hero.jpg', user: u1 , restaurant:r1

i2 = Image.create title: 'salmon', description: 'samon mix salad', image_url: 'https://www.thebalance.com/how-to-create-an-effective-restaurant-menu-2888585?utm_source=pinterest', user: u2 ,restaurant: r2

i3 = Image.create title: 'sushi', description: 'mix sushi ', image_url: 'https://fthmb.tqn.com/GIq8wTEYO132GaGtGeZPboGCB8c=/768x0/filters:no_upscale()/GettyImages-550046563-575df0105f9b58f22e4216bb.jpg', user: u3 ,restaurant:r3

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

re1 = Review.create title: 'Menu and dishes', body: 'The menu offers a wide variety of mouth-watering starters. I had the white asparagus accompanied by a mousseline sauce and poached eggs, while my friend tried the zucchini carpaccio served with sundries tomatoes and a mozzarella strudel. They were exquisite. The main course consisted in a risotto with scallop cooked in cream and a cassolette of coley with mussels, which really thrilled us. It all was followed by a delicious apple pie served with a scoop of vanilla ice cream for dessert.', rating: 3.1, user: u1 , restaurant: r1

re2 = Review.create title:'Atmosphere and decor', body: 'As you enter the place you are welcomed by a magnificent setting, a delightful marriage of antique cut stones and the luxuries of modernity.  Sitting in any table you have a wonderful view of the workshop-like kitchen where you can see the chefs working. For those who do not book a table and are waiting, there is a cosy lounge with aged leather armchairs and pictures of polo players displayed on the walls', rating: 4.5, user: u2 , restaurant: r2

re3 = Review.create title: 'Name and location', body: 'A restaurant situated in the heart of a small village between three national forests and close to the horse´s capital city, Chantilly. It is the favourite hangout place for people from the polo, horse races, and golf world', rating: 5, user: u3 , restaurant: r3

re4 = Review.create title: 'Name and location', body: 'A restaurant situated in the heart of a small village between three national forests and close to the horse´s capital city, Chantilly. It is the favourite hangout place for people from the polo, horse races, and golf world', rating: 4.5, user: u4 , restaurant: r4

re5 = Review.create title: ' Menu and dishes', body: 'The menu offers a wide variety of mouth-watering starters. I had the white asparagus accompanied by a mousseline sauce and poached eggs, while my friend tried the zucchini carpaccio served with sundries tomatoes and a mozzarella strudel. They were exquisite. The main course consisted in a risotto with scallop cooked in cream and a cassolette of coley with mussels, which really thrilled us. It all was followed by a delicious apple pie served with a scoop of vanilla ice cream for dessert.', rating: 1.5, user: u5 , restaurant: r5

re6 = Review.create title: 'Name and location', body: 'A restaurant situated in the heart of a small village between three national forests and close to the horse´s capital city, Chantilly. It is the favourite hangout place for people from the polo, horse races, and golf world', rating: 4.5, user:u1 , restaurant:r1

re7 = Review.create title: 'Menu and dishes', body: 'The menu offers a wide variety of mouth-watering starters. I had the white asparagus accompanied by a mousseline sauce and poached eggs, while my friend tried the zucchini carpaccio served with sundries tomatoes and a mozzarella strudel. They were exquisite. The main course consisted in a risotto with scallop cooked in cream and a cassolette of coley with mussels, which really thrilled us. It all was followed by a delicious apple pie served with a scoop of vanilla ice cream for dessert.', rating: 4, user: u1 , restaurant: r2

re8 = Review.create title: 'Atmosphere and decor', body: 'As you enter the place you are welcomed by a magnificent setting, a delightful marriage of antique cut stones and the luxuries of modernity.  Sitting in any table you have a wonderful view of the workshop-like kitchen where you can see the chefs working. For those who do not book a table and are waiting, there is a cosy lounge with aged leather armchairs and pictures of polo players displayed on the walls', rating: 5, user: u1, restaurant: r1

re9 = Review.create title: 'Menu and dishes', body: 'The menu offers a wide variety of mouth-watering starters. I had the white asparagus accompanied by a mousseline sauce and poached eggs, while my friend tried the zucchini carpaccio served with sundries tomatoes and a mozzarella strudel. They were exquisite. The main course consisted in a risotto with scallop cooked in cream and a cassolette of coley with mussels, which really thrilled us. It all was followed by a delicious apple pie served with a scoop of vanilla ice cream for dessert.', rating: 5, user: u1 , restaurant: r1

re10 = Review.create title: 'The ingredients, wine and prices', body: 'All the products were fresh and the dishes had the warmth of home-made food. The chefs takes great care in selecting the best quality ingredients. The restaurant also caters for all tastes by providing a large selection of the best wines of the region, which are pricy but worth sampling.', rating: 4.5, user: u1 , restaurant: r1

re11 = Review.create title: 'The service, waiters and owner', body: 'What a pity that the service does not accompany the high quality of the cooking. You can hardly get a smile out of the waitresses. Thankfully the owner and hostess, a middle-aged charming woman, is always around willing to exchange some kind words with all her clients.',rating: 4.5, user: u1 , restaurant: r1

re12 = Review.create title: 'Recommendation', body: 'Despite the high price of the food and the not so attentive waiters´ service, I had a pleasant dining experience with food of the most exquisite flavours. For this reason I highly recommend going to this restaurant.',rating: 5, user: u1 , restaurant: r1

re13 = Review.create title: 'Menu and dishes', body: 'The menu offers a wide variety of mouth-watering starters. I had the white asparagus accompanied by a mousseline sauce and poached eggs, while my friend tried the zucchini carpaccio served with sundries tomatoes and a mozzarella strudel. They were exquisite. The main course consisted in a risotto with scallop cooked in cream and a cassolette of coley with mussels, which really thrilled us. It all was followed by a delicious apple pie served with a scoop of vanilla ice cream for dessert. ', rating: 3.1, user: u2 , restaurant: r1

re14 = Review.create title: 'Atmosphere and decor', body: 'As you enter the place you are welcomed by a magnificent setting, a delightful marriage of antique cut stones and the luxuries of modernity.  Sitting in any table you have a wonderful view of the workshop-like kitchen where you can see the chefs working. For those who do not book a table and are waiting, there is a cosy lounge with aged leather armchairs and pictures of polo players displayed on the walls', rating: 4.5, user: u2 , restaurant: r1

re15 = Review.create title: 'Name and location', body: 'A restaurant situated in the heart of a small village between three national forests and close to the horse´s capital city, Chantilly. It is the favourite hangout place for people from the polo, horse races, and golf world', rating: 5, user: u3 , restaurant: r1

re16 = Review.create title: 'Name and location', body: 'A restaurant situated in the heart of a small village between three national forests and close to the horse´s capital city, Chantilly. It is the favourite hangout place for people from the polo, horse races, and golf world', rating: 4.5, user: u4 , restaurant: r1

re17 = Review.create title: ' Menu and dishes', body: 'The menu offers a wide variety of mouth-watering starters. I had the white asparagus accompanied by a mousseline sauce and poached eggs, while my friend tried the zucchini carpaccio served with sundries tomatoes and a mozzarella strudel. They were exquisite. The main course consisted in a risotto with scallop cooked in cream and a cassolette of coley with mussels, which really thrilled us. It all was followed by a delicious apple pie served with a scoop of vanilla ice cream for dessert.', rating: 1.5, user: u5 , restaurant: r1

re18 = Review.create title: 'Name and location', body: 'A restaurant situated in the heart of a small village between three national forests and close to the horse´s capital city, Chantilly. It is the favourite hangout place for people from the polo, horse races, and golf world', rating: 4.5, user:u1 , restaurant:r2

re19 = Review.create title: 'Menu and dishes', body: 'The menu offers a wide variety of mouth-watering starters. I had the white asparagus accompanied by a mousseline sauce and poached eggs, while my friend tried the zucchini carpaccio served with sundries tomatoes and a mozzarella strudel. They were exquisite. The main course consisted in a risotto with scallop cooked in cream and a cassolette of coley with mussels, which really thrilled us. It all was followed by a delicious apple pie served with a scoop of vanilla ice cream for dessert.', rating: 4, user: u1 , restaurant: r2

re20 = Review.create title: 'Atmosphere and decor', body: 'As you enter the place you are welcomed by a magnificent setting, a delightful marriage of antique cut stones and the luxuries of modernity.  Sitting in any table you have a wonderful view of the workshop-like kitchen where you can see the chefs working. For those who do not book a table and are waiting, there is a cosy lounge with aged leather armchairs and pictures of polo players displayed on the walls', rating: 5, user: u1, restaurant: r2

re21 = Review.create title: 'Menu and dishes', body: 'The menu offers a wide variety of mouth-watering starters. I had the white asparagus accompanied by a mousseline sauce and poached eggs, while my friend tried the zucchini carpaccio served with sundries tomatoes and a mozzarella strudel. They were exquisite. The main course consisted in a risotto with scallop cooked in cream and a cassolette of coley with mussels, which really thrilled us. It all was followed by a delicious apple pie served with a scoop of vanilla ice cream for dessert.', rating: 5, user: u2 , restaurant: r2

re22 = Review.create title: 'The ingredients, wine and prices', body: 'All the products were fresh and the dishes had the warmth of home-made food. The chefs takes great care in selecting the best quality ingredients. The restaurant also caters for all tastes by providing a large selection of the best wines of the region, which are pricy but worth sampling.', rating: 4.5, user: u1 , restaurant: r2

re23 = Review.create title: 'The service, waiters and owner', body: 'What a pity that the service does not accompany the high quality of the cooking. You can hardly get a smile out of the waitresses. Thankfully the owner and hostess, a middle-aged charming woman, is always around willing to exchange some kind words with all her clients.',rating: 4.5, user: u1 , restaurant: r2

re24 = Review.create title: 'Recommendation', body: 'Despite the high price of the food and the not so attentive waiters´ service, I had a pleasant dining experience with food of the most exquisite flavours. For this reason I highly recommend going to this restaurant.',rating: 5, user: u1 , restaurant: r3

re25 = Review.create title: 'Menu and dishes', body: 'The menu offers a wide variety of mouth-watering starters. I had the white asparagus accompanied by a mousseline sauce and poached eggs, while my friend tried the zucchini carpaccio served with sundries tomatoes and a mozzarella strudel. They were exquisite. The main course consisted in a risotto with scallop cooked in cream and a cassolette of coley with mussels, which really thrilled us. It all was followed by a delicious apple pie served with a scoop of vanilla ice cream for dessert. ', rating: 3.1, user: u1 , restaurant: r3

re26 = Review.create title: 'Atmosphere and decor', body: 'As you enter the place you are welcomed by a magnificent setting, a delightful marriage of antique cut stones and the luxuries of modernity.  Sitting in any table you have a wonderful view of the workshop-like kitchen where you can see the chefs working. For those who do not book a table and are waiting, there is a cosy lounge with aged leather armchairs and pictures of polo players displayed on the walls', rating: 4.5, user: u2 , restaurant: r3

re27 = Review.create title: 'Name and location', body: 'A restaurant situated in the heart of a small village between three national forests and close to the horse´s capital city, Chantilly. It is the favourite hangout place for people from the polo, horse races, and golf world', rating: 5, user: u3 , restaurant: r3

re28 = Review.create title: 'Name and location', body: 'A restaurant situated in the heart of a small village between three national forests and close to the horse´s capital city, Chantilly. It is the favourite hangout place for people from the polo, horse races, and golf world', rating: 4.5, user: u4 , restaurant: r4

re29 = Review.create title: ' Menu and dishes', body: 'The menu offers a wide variety of mouth-watering starters. I had the white asparagus accompanied by a mousseline sauce and poached eggs, while my friend tried the zucchini carpaccio served with sundries tomatoes and a mozzarella strudel. They were exquisite. The main course consisted in a risotto with scallop cooked in cream and a cassolette of coley with mussels, which really thrilled us. It all was followed by a delicious apple pie served with a scoop of vanilla ice cream for dessert.', rating: 1.5, user: u5 , restaurant: r4

re29 = Review.create title: 'Name and location', body: 'A restaurant situated in the heart of a small village between three national forests and close to the horse´s capital city, Chantilly. It is the favourite hangout place for people from the polo, horse races, and golf world', rating: 4.5, user:u1 , restaurant:r4

re30 = Review.create title: 'Menu and dishes', body: 'The menu offers a wide variety of mouth-watering starters. I had the white asparagus accompanied by a mousseline sauce and poached eggs, while my friend tried the zucchini carpaccio served with sundries tomatoes and a mozzarella strudel. They were exquisite. The main course consisted in a risotto with scallop cooked in cream and a cassolette of coley with mussels, which really thrilled us. It all was followed by a delicious apple pie served with a scoop of vanilla ice cream for dessert.', rating: 4, user: u1 , restaurant: r5

re31 = Review.create title: 'Atmosphere and decor', body: 'As you enter the place you are welcomed by a magnificent setting, a delightful marriage of antique cut stones and the luxuries of modernity.  Sitting in any table you have a wonderful view of the workshop-like kitchen where you can see the chefs working. For those who do not book a table and are waiting, there is a cosy lounge with aged leather armchairs and pictures of polo players displayed on the walls', rating: 5, user: u1, restaurant: r5

re32 = Review.create title: 'Menu and dishes', body: 'The menu offers a wide variety of mouth-watering starters. I had the white asparagus accompanied by a mousseline sauce and poached eggs, while my friend tried the zucchini carpaccio served with sundries tomatoes and a mozzarella strudel. They were exquisite. The main course consisted in a risotto with scallop cooked in cream and a cassolette of coley with mussels, which really thrilled us. It all was followed by a delicious apple pie served with a scoop of vanilla ice cream for dessert.', rating: 5, user: u1 , restaurant: r5

re33 = Review.create title: 'The ingredients, wine and prices', body: 'All the products were fresh and the dishes had the warmth of home-made food. The chefs takes great care in selecting the best quality ingredients. The restaurant also caters for all tastes by providing a large selection of the best wines of the region, which are pricy but worth sampling.', rating: 4.5, user: u1 , restaurant: r6

re34 = Review.create title: 'The service, waiters and owner', body: 'What a pity that the service does not accompany the high quality of the cooking. You can hardly get a smile out of the waitresses. Thankfully the owner and hostess, a middle-aged charming woman, is always around willing to exchange some kind words with all her clients.',rating: 4.5, user: u1 , restaurant: r6

re35 = Review.create title: 'Recommendation', body: 'Despite the high price of the food and the not so attentive waiters´ service, I had a pleasant dining experience with food of the most exquisite flavours. For this reason I highly recommend going to this restaurant.',rating: 5, user: u1 , restaurant: r6

re36 = Review.create title: 'Menu and dishes', body: 'The menu offers a wide variety of mouth-watering starters. I had the white asparagus accompanied by a mousseline sauce and poached eggs, while my friend tried the zucchini carpaccio served with sundries tomatoes and a mozzarella strudel. They were exquisite. The main course consisted in a risotto with scallop cooked in cream and a cassolette of coley with mussels, which really thrilled us. It all was followed by a delicious apple pie served with a scoop of vanilla ice cream for dessert. ', rating: 3.1, user: u1 , restaurant: r6

re37 = Review.create title: 'Atmosphere and decor', body: 'As you enter the place you are welcomed by a magnificent setting, a delightful marriage of antique cut stones and the luxuries of modernity.  Sitting in any table you have a wonderful view of the workshop-like kitchen where you can see the chefs working. For those who do not book a table and are waiting, there is a cosy lounge with aged leather armchairs and pictures of polo players displayed on the walls', rating: 4.5, user: u2 , restaurant: r6

re38 = Review.create title: 'Name and location', body: 'A restaurant situated in the heart of a small village between three national forests and close to the horse´s capital city, Chantilly. It is the favourite hangout place for people from the polo, horse races, and golf world', rating: 5, user: u3 , restaurant: r5

re39 = Review.create title: 'Name and location', body: 'A restaurant situated in the heart of a small village between three national forests and close to the horse´s capital city, Chantilly. It is the favourite hangout place for people from the polo, horse races, and golf world', rating: 4.5, user: u4 , restaurant: r5

re40 = Review.create title: ' Menu and dishes', body: 'The menu offers a wide variety of mouth-watering starters. I had the white asparagus accompanied by a mousseline sauce and poached eggs, while my friend tried the zucchini carpaccio served with sundries tomatoes and a mozzarella strudel. They were exquisite. The main course consisted in a risotto with scallop cooked in cream and a cassolette of coley with mussels, which really thrilled us. It all was followed by a delicious apple pie served with a scoop of vanilla ice cream for dessert.', rating: 1.5, user: u5 , restaurant: r5

re41 = Review.create title: 'Name and location', body: 'A restaurant situated in the heart of a small village between three national forests and close to the horse´s capital city, Chantilly. It is the favourite hangout place for people from the polo, horse races, and golf world', rating: 4.5, user:u1 , restaurant:r5

re42 = Review.create title: 'Menu and dishes', body: 'The menu offers a wide variety of mouth-watering starters. I had the white asparagus accompanied by a mousseline sauce and poached eggs, while my friend tried the zucchini carpaccio served with sundries tomatoes and a mozzarella strudel. They were exquisite. The main course consisted in a risotto with scallop cooked in cream and a cassolette of coley with mussels, which really thrilled us. It all was followed by a delicious apple pie served with a scoop of vanilla ice cream for dessert.', rating: 4, user: u1 , restaurant: r5

re43 = Review.create title: 'Atmosphere and decor', body: 'As you enter the place you are welcomed by a magnificent setting, a delightful marriage of antique cut stones and the luxuries of modernity.  Sitting in any table you have a wonderful view of the workshop-like kitchen where you can see the chefs working. For those who do not book a table and are waiting, there is a cosy lounge with aged leather armchairs and pictures of polo players displayed on the walls', rating: 5, user: u1, restaurant: r5

re44 = Review.create title: 'Menu and dishes', body: 'The menu offers a wide variety of mouth-watering starters. I had the white asparagus accompanied by a mousseline sauce and poached eggs, while my friend tried the zucchini carpaccio served with sundries tomatoes and a mozzarella strudel. They were exquisite. The main course consisted in a risotto with scallop cooked in cream and a cassolette of coley with mussels, which really thrilled us. It all was followed by a delicious apple pie served with a scoop of vanilla ice cream for dessert.', rating: 5, user: u1 , restaurant: r5

re45 = Review.create title: 'The ingredients, wine and prices', body: 'All the products were fresh and the dishes had the warmth of home-made food. The chefs takes great care in selecting the best quality ingredients. The restaurant also caters for all tastes by providing a large selection of the best wines of the region, which are pricy but worth sampling.', rating: 4.5, user: u1 , restaurant: r5

re46 = Review.create title: 'The service, waiters and owner', body: 'What a pity that the service does not accompany the high quality of the cooking. You can hardly get a smile out of the waitresses. Thankfully the owner and hostess, a middle-aged charming woman, is always around willing to exchange some kind words with all her clients.',rating: 4.5, user: u1 , restaurant: r5

re47 = Review.create title: 'Recommendation', body: 'Despite the high price of the food and the not so attentive waiters´ service, I had a pleasant dining experience with food of the most exquisite flavours. For this reason I highly recommend going to this restaurant.',rating: 5, user: u1 , restaurant: r5


puts "create #{Review.all.length} reviews "

#### Comment #######
Comment.destroy_all

c1 = Comment.create body: 'We had lunch here a few times while on the island visiting family and friends. The servers here are just wonderful and have great memories it seems. We sat on the ocean front patio and enjoyed the view with our delicious wine and lunch. Must try!', user: u1, review: re1

c2 = Comment.create body:'Hello. Please give our thanks to the Manager(s) and others for the wonderful room and bottle of sparkling wine for our Anniversary stay. We had an amazing time. The room was so comfortable, the food at Echo absolutely spectacular (we ate two meals there). Our waitress was just wonderful. Looking forward to staying with you in the future. What a great place!', user: u1,review:re2

c3 = Comment.create body: 'Spent 3 nights at this resort earlier this month and it was a great stay! We paid for an upgrade to the oceanfront cabana, which was worth the price. The beach views, calm ocean and ability to watch the sunset on our patio were highlights of the trip! The hotel restaurant was exceptional, not only because every meal we enjoyed had a variety of options and was flavorful but also because the prices were so reasonable for an oceanfront resort! The entire island and resort were a lot more laid back and calm than other touristy coastal front towns in the southeast, but that may in part due to it being early March. I imagine there a bit more traffic during high seasons, but either way, we will definitely be back! Highly recommended!', user: u1 , review: re3

c4 = Comment.create body: 'We chatted with her all weekend and she played with the kids. She an asset to the hotel esp for people with families. I saw other attendants playing with the kids too which is so welcoming. Rachel was gorgeous. Give her a raise!', user: u1 , review: re4

c5 = Comment.create body: 'I had lunch with some of my colleagues at Echo on Day 1. I had the wedge salad - it was delicious. On Night 2, I enjoyed a drink at the bar. I had a Margarita. The service was excellent.', user: u1 , review: re5

c6 = Comment.create body: 'The food was absolutely wonderful, from preparation to presentation, very pleasing. We especially enjoyed the special bar drinks, the cucumber/cilantro infused vodka martini and the K&P Aquarium was great (even took photos so we could try to replicate at home',user: u1, review: re2

c7 = Comment.create body: 'Although we did nott go into the onsite restaurant, we ordered some food at the bar a few times and it was delicious. The bar area and lobby were nice and open, good place to relax and meet friends.', user: u1 , review: re3

c8 = Comment.create body: 'I was expecting the food here to follow in the old Southern tradition but was pleased to find the menus trending in a contemporary direction with emphasis on lean, fresh and organic fare -- while still keeping with Low Country/Southern convention. My favorite dish at the Ocean Terrace Restaurant, in fact, was shrimp and grits topped with a tasty tasso sauce and loaded with locally netted Georgia white shrimp,which are positively unmatched for flavor.
The chef and his staff are staunch advocates of the farm-to-table concept, sourcing produce, meats, poultry and dairy products almost exclusively from Georgia organic farms.', user: u1 , review: re4

c9 = Comment.create body: 'Lovely lunch today. Ordered the crab cake sandwich and was pleased by the quality of the crab cake, as well as the nicely toasted roll, thick slices of ripe avocado, and crisp hot bacon which accompanied it. The side of fresh fruit was also generous and perfectly ripe. A very good experience! Add this to the best dining view on the island on a gorgeous Fall day, and it adds up to perfection!', user: u1 , review: re5

c10 = Comment.create body: 'The food was fresh, properly prepared and a great value for the price. We highly recommend it. The breakfast buffet on Sunday was equally as good.', user: u3 , review: re1

c11 = Comment.create body: 'Thank you so much for taking such wonderful care of our family during our visit to the King and Prince. You and your staff were so very accommodating and informed about our special dietary needs. The food at the King’s Tavern was always delicious! My son had a wonderful time and liked that he could order special food and the chef would make it so he could eat it. If you wouldn’t mind telling me how you prepared the fish, I would like to try making some for him at home, since he enjoyed it so much. He even asked if we could stay until his birthday in July. He said that he wanted to have his birthday at the beach too! What a thoughtful gesture to have the cake for my niece on her birthday! It was delicious, and my son and my mom enjoyed their desserts as well. I know my niece will remember her 10th birthday for years to come!', user: u3 , review: re2

c12 = Comment.create body:'Thank you also for having the special gluten free items for my mother. I tried the blueberry muffin and it was delicious! It was so nice to know we didn’t have to worry as much about our food while on vacation, and that we were able to order it and not have to bring a lot of food with us.
Once again THANK YOU SO MUCH for everything! We had a great vacation, and you and your staff helped to make it that way! We will be back next year! I’ll be sure to let you know in advance before we come again. Thanks again for all your hard work and consideration', user: u3 , review: re3

c13 = Comment.create body: 'Reception and all service staff were very helpful and cordial. Our beachfront room on the third floor had a balcony and a great view of the pool area, the ocean, and sunrise- magnificent. Food in the tavern for dinner and breakfast was good. Especially liked the lowcountry shrimp and grits. They surprised my husband with a slice of chocolate cake with "Happy Birthday" written on the plate when we casually mentioned that it was his birthday!', user: u3 , review: re4

c14 = Comment.create body: 'The breakfast brunch was great. We went at 10:45 and everything was still hot and there was plenty of everything. Our server was very friendly and took good care of us. We enjoyed sitting at the pool and enjoying cocktails. We also loved walking on the beach.', user: u3 ,review: re5

puts "create #{Comment.all.length} comments "
