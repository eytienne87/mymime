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

# ----------Mimes------------
bobby = Clown.create!(
  name: "Bobby",
  image_url: "https://www.futurity.org/wp/wp-content/uploads/2021/04/mimes-perception-1600.jpg",
  years_of_experience: 8,
  price: 10_000,
  description: 'I\'m a mime from Montreal and I love it!',
  user: user_1
)

anthony = Clown.create!(
  name: "Anthony",
  image_url: "https://media-api.xogrp.com/images/f9eb6943-f9a7-465d-b22e-100dc29a8b35~cr_49.0.1637.1591",
  years_of_experience: 12,
  price: 25_000,
  description: 'I\'m a mime from Quebec city and I love it!',
  user: user_1
)

judith = Clown.create!(
  name: "Judith",
  image_url: "https://npr.brightspotcdn.com/dims4/default/954745d/2147483647/strip/true/crop/640x960+0+0/resize/880x1320!/quality/90/?url=http%3A%2F%2Fnpr-brightspot.s3.amazonaws.com%2Ffa%2F37%2Fba54a6e94e299e58f9e0483b9cf3%2F04232020-beth-byrd-lonski-emmett-merrill.jpg",
  years_of_experience: 2,
  price: 5000,
  description: 'Hello everyone, I\'m great at my job!',
  user: user_1
)

caroline = Clown.create!(
  name: "Caroline",
  image_url: "https://www.danceinforma.com/wp-content/uploads/2015/04/mime-make-up-mode-dion.jpg",
  years_of_experience: 25,
  price: 40_000,
  description: 'I\'m a mime from Laval and I love it!',
  user: user_2
)

john = Clown.create!(
  name: "John",
  image_url: "https://static.wikia.nocookie.net/clownopedia/images/1/15/Mime-costume-1-.jpg/revision/latest?cb=20140119032156",
  years_of_experience: 62,
  price: 30_000,
  description: 'I give a hell of a show',
  user: user_2
)

# ----------Bookings------------

Booking.create!(
  start_date: Datetime.now,
  end_date: Datetime.now + 1.hour,
  user: user_3,
  clown: caroline
)
Booking.create!(
  start_date: Datetime.now + 1,
  end_date: Datetime.now.end_of_day + 1,
  user: user_4,
  clown: caroline
)
Booking.create!(
  start_date: Datetime.now + 2,
  end_date: Datetime.now.end_of_day + 2,
  user: user_5,
  clown: judith
)
Booking.create!(
  start_date: Datetime.now + 3,
  end_date: Datetime.now.end_of_day + 3,
  user: user_3,
  clown: judith
)
Booking.create!(
  start_date: Datetime.now + 4,
  end_date: Datetime.now.end_of_day + 4,
  user: user_4,
  clown: judith
)
