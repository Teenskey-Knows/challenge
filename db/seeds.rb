# This will delete any existing rows from the Movie and Actor tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting movie/actor data..."
Movie.destroy_all
Actor.destroy_all
Role.destroy_all

puts "Creating movies...🎥🎥...hope you like movies, otherwise we will be 💔"
mean_girls = Movie.create(title: "Mean Girls", box_office_earnings: 129_000_000)
spice_world = Movie.create(title: "Spice World", box_office_earnings: 151_000_000)

puts "Creating actors...🦸..👨‍🔬😤🟢🦸‍♂️"
lindsay_lohan = Actor.create(name: "Lindsay Lohan")
tina_fey = Actor.create(name: "Tina Fey")
baby_spice = Actor.create(name: "Emma Bunton")
ginger_spice = Actor.create(name: "Geri Halliwell")
scary_spice = Actor.create(name: "Melanie Brown")
sporty_spice = Actor.create(name: "Melanie Chisholm")
posh_spice = Actor.create(name: "Victoria Addams")

puts "Creating roles...🎎"
# ***********************************************************
# * TODO: create roles! Remember, a role belongs to a movie *
# * and a role belongs to an actor.                         *
# ***********************************************************
# Create Roles Here

villain = Role.create(salary:50000, character_name:"Unco-jing-jong")
super_hero = Role.create(salary:40000,character_name:"Desagu")
main_character = Role.create(salary:60000,character_name:"Nyashinski")
supporting_role = Role.create(salary:60000,character_name:"Shiks")
recurring_character = Role.create(salary:6949404,character_name:"Glenn Nguyo")
side_character = Role.create(salary:47474737,character_name:"Joy Whitney")
background_role = Role.create(salary:4949494, character_name:"Brian Wangora")
series_regular = Role.create(salary:589484043,character_name:"Daniel Obizzy")

#Assigning different values

#lindsay_lohan is an actor & we are giving him a role by shovel method
lindsay_lohan.roles << main_character
#let's give lindsay_lohan a movie
lindsay_lohan.movies << mean_girls

#An actor can have many roles and many movies
#Let's add our actor another movie

lindsay_lohan.movies << spice_world
lindsay_lohan.roles << super_hero

#Actor 2
tina_fey.movies << spice_world
tina_fey.roles << super_hero

#Actor 3
baby_spice.movies << mean_girls
baby_spice.roles << supporting_role

#Actor 4
ginger_spice.movies << spice_world
ginger_spice.roles << recurring_character

#Actor 5 
scary_spice.movies << mean_girls
scary_spice.roles << side_character

#Actor 6
sporty_spice.movies << mean_girls
sporty_spice.roles << background_role

#Actor 7
posh_spice.movies << spice_world
posh_spice.roles << series_regular

puts "Seeding done...From Group 7...👴..🧓!..."


# Role.create(salary:50_000, character_name:"Meliodas", actor_id: 5, movie_id: 2)
# Role.create(salary:100_000, character_name:"Ban Sama", actor_id: 6, movie_id: 1)
# Role.create(salary:100_000, character_name:"Elizabeth", actor_id: 5, movie_id: 1)
# Role.create(salary:200_000, character_name:"Goku", actor_id: 6, movie_id: 2)
# Role.create(salary:50_000, character_name:"Harry", actor_id: 7, movie_id: 2)
# Role.create(salary:200_000, character_name:"Ezra", actor_id: 2, movie_id: 2)
# Role.create(salary:50_000, character_name:"Naruto", actor_id: 3, movie_id: 1)
# Role.create(salary:100_000, character_name:"Izen", actor_id: 4, movie_id: 2)
# Role.create(salary:100_000, character_name:"Konan", actor_id: 3, movie_id: 2)
# Role.create(salary:200_000, character_name:"Ichigo", actor_id: 4, movie_id: 1)