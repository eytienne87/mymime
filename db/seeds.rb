require "open-uri"

puts "Destroying all users, all mimes and all bookings..."

Booking.destroy_all
Clown.destroy_all
User.destroy_all

puts "Seeding in progress..."

# ----------Users------------
user_1 = User.create!(
  {email: "a@a.a", password: "123456"}
)
user_2 = User.create!(
  {email: "b@b.b", password: "123456"}
)
user_3 = User.create!(
  {email: "c@c.c", password: "123456"}
)
user_4 = User.create!(
  {email: "d@d.d", password: "123456"}
)
user_5 = User.create!(
  {email: "e@e.e", password: "123456"}
)


file = URI.open('https://i.pravatar.cc/150?img=52')
user_1.photo.attach(io: file, filename: 'avatar.png', content_type: 'image/jpeg')

file = URI.open('https://i.pravatar.cc/150?img=51')
user_2.photo.attach(io: file, filename: 'avatar.png', content_type: 'image/jpeg')

file = URI.open('https://i.pravatar.cc/150?img=49')
user_3.photo.attach(io: file, filename: 'avatar.png', content_type: 'image/jpeg')

file = URI.open('https://i.pravatar.cc/150?img=45')
user_4.photo.attach(io: file, filename: 'avatar.png', content_type: 'image/jpeg')

file = URI.open('https://i.pravatar.cc/150?img=65')
user_5.photo.attach(io: file, filename: 'avatar.png', content_type: 'image/jpeg')


# ----------Mimes------------
bobby = Clown.create!(
  name: "Bobby",
  image_url: "https://www.futurity.org/wp/wp-content/uploads/2021/04/mimes-perception-1600.jpg",
  years_of_experience: 8,
  price: 100,
  description: "Bobby is Washington DC's very own Family Friendly Danger Clown,
                Stilt Walker, Balloon Artist, Street Performer, Magician and more! Crickett is a veteran of the
                Ringling Bros. and Barnum & Bailey Circus where he spent 5 years performing across America as a star performer,
                ambassador of laughter, and international representative of the Greatest Show on Earth!",
  user: user_1
)

anthony = Clown.create!(
  name: "Anthony",
  image_url: "https://media-api.xogrp.com/images/f9eb6943-f9a7-465d-b22e-100dc29a8b35~cr_49.0.1637.1591",
  years_of_experience: 12,
  price: 125,
  description: "Incredible Juggling, Hula Hoop, Unicycle, Fire,
                Tricks. This is an act full of feats of skill that no one else in the world can duplicate.
                There is lots of audience participation throughout the show. Everyone, adults & children, get involved and have a great time!
                Many TV Appearances in the U.S. Canada & Europe, including David Letterman and many more.",
  user: user_1
)

judith = Clown.create!(
  name: "Judith",
  image_url: "https://i.ytimg.com/vi/vJhbJrDW3yI/maxresdefault.jpg",
  years_of_experience: 2,
  price: 70,
  description: "Cirque Entertainment Party Packages for Weddings, Birthdays, Sweet 16's, Mitzvahs,
                and all types of social events. Custom proposals and creation for Corporate events.
                Countless themes to choose from.",
  user: user_1
)

caroline = Clown.create!(
  name: "Eddy",
  image_url: "https://www.danceinforma.com/wp-content/uploads/2015/04/mime-make-up-mode-dion.jpg",
  years_of_experience: 4,
  price: 90,
  description: "This International Juggling champion has been developing original forms of manipulation
                for over 25 years. His personal oeuvre includes appearances on The Discovery Channel,
                millions of views on YouTube, commercials, & magazine covers. His background in engineering makes him a
                memorable keynote speaker with performances that can be tailored to large corporate
                team building events or inspiring STEAM educational programs.",
  user: user_2
)

john = Clown.create!(
  name: "Russell",
  image_url: "https://i.pinimg.com/originals/52/18/e0/5218e000df0fea0da6b2101e39122d1d.jpg",
  years_of_experience: 35,
  price: 250,
  description: "Century Russell has performed as 'Magic Century' for over thirty years. His trademark
                magic and comedy routines have amazed audiences in every venue imaginable.
                For Special Events, Parties, and Corporate Functions, Century has the perfect program to meet your needs.",
  user: user_2
)

# ----------Bookings------------

Booking.create!(
  start_date: DateTime.now,
  end_date: DateTime.now + 1.hour,
  user: user_3,
  clown: caroline
)
Booking.create!(
  start_date: DateTime.now + 1,
  end_date: DateTime.now.end_of_day + 1,
  user: user_4,
  clown: caroline
)
Booking.create!(
  start_date: DateTime.now + 2,
  end_date: DateTime.now.end_of_day + 2,
  user: user_5,
  clown: judith
)
Booking.create!(
  start_date: DateTime.now + 3,
  end_date: DateTime.now.end_of_day + 3,
  user: user_3,
  clown: judith
)
Booking.create!(
  start_date: DateTime.now + 4,
  end_date: DateTime.now.end_of_day + 4,
  user: user_4,
  clown: judith
)
