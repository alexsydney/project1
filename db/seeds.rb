###Init - Seed data ########

### User
User.destroy_all
u1 = User.create first_name: 'Alex', last_name: 'Pham', email: 'alexpham@gmail.com', location: 'Sydney', password: 'chicken', is_admin: true

u2 = User.create first_name: 'test1', last_name: 'Test1', email: 'test1@gmail.com', location: 'Sydney ', password: 'chicken', is_admin: false

u3 = User.create first_name: 'test2', last_name: 'test2', email: 'test2@gmail.com', location: 'North Sydney', password: 'chicken', is_admin: false

u4 = User.create first_name: 'test3', last_name: 'test3', email: 'test3@gmail.com', location: 'Canberra', password: 'chicken', is_admin: false

u5 = User.create first_name: 'test4', last_name: 'test4', email: 'test4@gmail.com', location: 'Bondi', password: 'chicken',is_admin: false

puts "create #{User.all.length} users "

#### Restaurant ###
Restaurant.destroy_all

r1 = Restaurant.create name: 'test', address: 'abc', location: 'abs', url_website: 'https://www.goodfood.com.au/eat-out', user_id: u1.id

r2 = Restaurant.create name: 'Hurricane Grill- Darling Harbour', address: 'Shops 433-436, Level 2, Harbourside Shopping Centre, 2-10 Darling Drive, Darling Harbour, Sydney', location: 'Sydney', url_website: 'https://www.zomato.com/sydney/hurricanes-grill-darling-harbour-darling-harbour', user_id:u2.id

r3 = Restaurant.create name: 'Manta Restaurant', address: '6 Cowper Wharf Rdwy  Woolloomooloo, Sydney, New South Wales 2011, Australia', location: 'Sydney', url_website: 'http://mantarestaurant.com.au/', user_id: u3.id

r4 = Restaurant.create name: 'Fish At The Rocks', address: '29 Kent St, Sydney, New South Wales 2000, Australia', location: 'Sydney', url_website: 'http://www.fishattherocks.com.au/', user_id: u4.id

r5 = Restaurant.create name: 'love.fish Barangaroo', address: 'Wulugul Walk, 7/23 Barangaroo Avenue, Wulugul Walk Barangaroo, Sydney, New South Wales 2000 Australia', location: 'Sydney', url_website: 'http://www.lovefish.com.au/', user_id: u5.id

puts "create #{Restaurant.all.length} restaurants "
