Genre.create!([
  {name: "action"},
  {name: "adventure"},
  {name: "sci-fi"}
])
Actor.create!([
  {first_name: "Bruce", last_name: "Willis", known_for: "Die Hard", gender: "M", age: 55, movie_id: 2},
  {first_name: "Dwayne", last_name: "Johnson", known_for: "Jumanji", gender: "M", age: 50, movie_id: 3},
  {first_name: "Jason", last_name: "Stathom", known_for: "Crank", gender: "M", age: 56, movie_id: 4},
  {first_name: "johnny", last_name: "Depp", known_for: "pirate's of the carribean", gender: "F", age: 52, movie_id: 1},
  {first_name: "Scarlett", last_name: "Johanson", known_for: "avengers", gender: "F", age: 44, movie_id: 5},
  {first_name: "sam", last_name: "blank", known_for: "austin powers", gender: "M", age: 85, movie_id: 1}
])
Movie.create!([
  {title: "pirate's of the carribean", year: 2006, plot: "Jack Sparrow and a band of misfits sail the high seas", director: "sam blank", english: true},
  {title: "Die Hard", year: 1988, plot: "John Mclain battles terrorists in a high riser", director: "John Mclain", english: true},
  {title: "Doom", year: 2005, plot: "group of commandos battle demons on mars", director: "Johny Cash", english: true},
  {title: "The expendables", year: 2011, plot: "group of mercenaries that battle evil doers", director: "The rock", english: true},
  {title: "avengers", year: 2012, plot: "group of super heroes defend earth from alien invasion", director: "john mclain", english: true}
])
MovieGenre.create!([
  {genre_id: 1, movie_id: 2},
  {genre_id: 1, movie_id: 1},
  {genre_id: 3, movie_id: 3},
  {genre_id: 1, movie_id: 4},
  {genre_id: 3, movie_id: 5},
  {genre_id: 2, movie_id: 1},
  {genre_id: 3, movie_id: 2}
])
User.create!([
  {name: "adam", email: "adam@gmail.com", password_digest: "$2a$12$sXvwNNQsWi3WkUlHvWdOmuvyg9Ti6xSh/97rXbC0koqLEfj4FsXke", admin: false},
  {name: "alex", email: "alex@gmail.com", password_digest: "$2a$12$hSGc0OO5eVte0v7XKK705uCQVdUE1aU2O22jPUgChEeImLJVsFROG", admin: false},
  {name: "sam", email: "sam@gmail.com", password_digest: "$2a$12$.D9ihhFcAIAB8fx5axzFmO5bfTBQgFZ/33jdTRoj.j5/4KglrDJQC", admin: true}
])
