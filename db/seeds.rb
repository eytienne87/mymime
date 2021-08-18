Clown.destroy_all
User.destroy_all

u = User.create!(
  {email: "123@a.a", password: "123456"}
)

Clown.create!(
  name: "Bobby",
  image_url: "https://www.futurity.org/wp/wp-content/uploads/2021/04/mimes-perception-1600.jpg",
  gender: "Male",
  years_of_experience: 8,
  user: u
)

Clown.create!(
  name: "Anthony",
  image_url: "https://media-api.xogrp.com/images/f9eb6943-f9a7-465d-b22e-100dc29a8b35~cr_49.0.1637.1591",
  gender: "Male",
  years_of_experience: 12,
  user: u
)

Clown.create!(
  name: "Judith",
  image_url: "https://npr.brightspotcdn.com/dims4/default/954745d/2147483647/strip/true/crop/640x960+0+0/resize/880x1320!/quality/90/?url=http%3A%2F%2Fnpr-brightspot.s3.amazonaws.com%2Ffa%2F37%2Fba54a6e94e299e58f9e0483b9cf3%2F04232020-beth-byrd-lonski-emmett-merrill.jpg",
  gender: "Female",
  years_of_experience: 2,
  user: u
)

Clown.create!(
  name: "Caroline",
  image_url: "https://www.danceinforma.com/wp-content/uploads/2015/04/mime-make-up-mode-dion.jpg",
  gender: "Female",
  years_of_experience: 25,
  user: u
)

Clown.create!(
  name: "John",
  image_url: "https://static.wikia.nocookie.net/clownopedia/images/1/15/Mime-costume-1-.jpg/revision/latest?cb=20140119032156",
  gender: "Male",
  years_of_experience: 62,
  user: u
)
