###Init - Seed data ########

### User
User.destroy_all
u1 = User.create first_name: 'Alex', last_name: 'Pham', email: 'alexpham@gmail.com', location: 'Sydney', password: 'chicken', is_admin: true

u2 = User.create first_name: 'test1', last_name: 'Test1', email: 'test1@gmail.com', location: 'Sydney ', password: 'chicken', is_admin: false


u3 = User.create first_name: 'test2', last_name: 'test2', email: 'test2@gmail.com', location: 'North Sydney', password: 'chicken', is_admin: false

u4 = User.create first_name: 'test3', last_name: 'test3', email: 'test3@gmail.com', location: 'Canberra', password: 'chicken', is_admin: false

u5 = User.create first_name: 'test4', last_name: 'test4', email: 'test4@gmail.com', location: 'Bondi', password: 'chicken',is_admin: false
