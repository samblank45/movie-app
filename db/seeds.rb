Movie.create([
  {
    title: "pirate's of the carribean",
    year: 2006,
    plot: "Jack Sparrow and a band of misfits sail the high seas",
    director: "sam blank",
    english: "yes"
  },
  {
    title: "Die Hard",
    year: 1988,
    plot: "John Mclain battles terrorists in a high riser",
    director: "John Mclain",
    english: "yes"
  },
  {
    title: "Doom",
    year: 2005,
    plot: "group of commandos battle demons on mars",
    director: "Johny Cash",
    english: "yes"
  },
  {
    title: "The expendables",
    year: 2011,
    plot: "group of mercenaries that battle evil doers",
    director: "The rock",
    english: "yes"
  },
  
])



Actor.create([
  {
    first_name: "johnny",
    last_name: "Depp",
    known_for: "pirate's of the carribean",
    gender: "F",
    age: 52,
    movie_id: 1
  },
  {
    first_name: "Bruce",
    last_name: "Willis",
    known_for: "Die Hard",
    gender: "M",
    age: 55,
    movie_id: 2
  },
  {
    first_name: "Dwayne",
    last_name: "Johnson",
    known_for: "Jumanji",
    gender: "M",
    age: 50,
    movie_id: 3
  },
  {
    first_name: "Jason",
    last_name: "Stathom",
    known_for: "Crank",
    gender: "M",
    age: 56,
    movie_id: 4
  },
])


  
  
  
