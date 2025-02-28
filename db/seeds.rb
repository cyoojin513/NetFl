# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)




puts "Start seeding"

require 'faker'

User.destroy_all
Movie.destroy_all
Review.destroy_all

User.reset_pk_sequence
Movie.reset_pk_sequence
Review.reset_pk_sequence

# Creating Users ()
User.create(name: 'Yoojin', email: 'yoojin@gmail.com', password: '123', avatar: 'https://i.pinimg.com/564x/4a/96/aa/4a96aa2357201c454bacf2119f690a89.jpg', admin: true )

# emails = ['hello@gmail.com', 'poketworld@gmail.com', 'movie@gmail.com']
# avatars = ['https://i.pinimg.com/564x/3b/c8/78/3bc878dcaf0830af8a322117097bc39f.jpg',
#   'https://i.pinimg.com/564x/4a/96/aa/4a96aa2357201c454bacf2119f690a89.jpg',
#   'https://i.pinimg.com/564x/ed/ad/56/edad56cf2af777c392027c15d4d8dfc2.jpg']

# 3.times do
#   User.create(
#     name: Faker::Games::Pokemon.name,
#     email: emails.sample,
#     password_digest: rand(1000..10000),
#     avatar: avatars.sample
#   )
# end


# Creating Movies

# ! <iframe width="560" height="315" src="https://www.youtube.com/embed/GdDxyxan3Y4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
# ! ?autoplay=1&mute=1 was added to the end of all trailer URL for autoplay when clicked

# TODO: We should re-seed to update the Trailer URLS (no need to db:drop)

m1 = Movie.create(
  title: "Despicable Me 2",
  image: "https://flxt.tmsimg.com/assets/p9680893_p_v8_ak.jpg",
  release_date: 2013,
  genre: 'movie',
  description: "When Gru, the world's most super-bad turned super-dad has been recruited by a team of officials to stop lethal muscle and a host of Gru's own, He has to fight back with new gadgetry, cars, and more minion madness.",
  trailer: "https://www.youtube.com/embed/GdDxyxan3Y4?autoplay=1&mute=1"
)


m2 = Movie.create(
title: "The Sea Beast",
image: "https://www.vitalthrills.com/wp-content/uploads/2022/06/netflixfilms2.jpg",
release_date: 2022,
genre: 'movie',
description: "When a young girl stows away on the ship of a legendary sea monster hunter, they launch an epic journey into uncharted waters - and make history to boot.",
trailer: "https://www.youtube.com/embed/P-E-IGQCsPo?autoplay=1&mute=1"
)

m3 = Movie.create(
title: "The Notebook",
image: "https://m.media-amazon.com/images/M/MV5BMTk3OTM5Njg5M15BMl5BanBnXkFtZTYwMzA0ODI3._V1_.jpg",
release_date: 2004,
genre: 'movie',
description: "A poor yet passionate young man (Ryan Gosling) falls in love with a rich young woman (Rachel McAdams), giving her a sense of freedom, but they are soon separated because of their social differences.",
trailer: "https://www.youtube.com/embed/8LsJl1B4V-E?autoplay=1&mute=1"
)

m4 = Movie.create(
title: "IT",
image: "https://hips.hearstapps.com/hmg-prod/images/it-2017-review-1504717689.jpg?crop=1.00xw:0.752xh;0,0.133xh&resize=1200:*",
release_date: 2017,
genre: 'movie',
description: "In the summer of 1989, a group of bullied kids band together to destroy a shape-shifting monster, which disguises itself as a clown and preys on the children of Derry, their small Maine town.",
trailer: "https://www.youtube.com/embed/FnCdOQsX5kc?autoplay=1&mute=1"
)

m5 = Movie.create(
title: "Hellbound",
image: "https://m.media-amazon.com/images/M/MV5BNzU1ODk0ZWUtMzdkYS00YmI2LWI1NjItOTg0NjQxNGY5MmNlXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_FMjpg_UX1000_.jpg",
release_date: 2021,
genre: 'movie',
description: "People hear predictions on when they will die. When that time comes, a death angel appears in front of them and kills them.",
trailer: "https://www.youtube.com/embed/UWfgm20-LTM?autoplay=1&mute=1"
)

m6 = Movie.create(
title: "Insidious",
image: "https://m.media-amazon.com/images/M/MV5BMTYyOTAxMDA0OF5BMl5BanBnXkFtZTcwNzgwNTc1NA@@._V1_FMjpg_UX1000_.jpg",
release_date: 2010,
genre: 'movie',
description: "A family looks to prevent evil spirits from trapping their comatose child in a realm called The Further.",
trailer: "https://www.youtube.com/embed/zuZnRUcoWos?autoplay=1&mute=1"
)

m7 = Movie.create(
title: "Dark Shadows",
image: "https://dlylovell.files.wordpress.com/2012/05/johnny-depp3.jpg",
release_date: 2012,
genre: 'movie',
description: "An imprisoned vampire, Barnabas Collins, is set free and returns to his ancestral home, where his dysfunctional descendants are in need of his protection.",
trailer: "https://www.youtube.com/embed/N6tVdffCr_M?autoplay=1&mute=1"
)

m8 = Movie.create(
title: "#Alive",
image: "https://occ-0-299-300.1.nflxso.net/dnm/api/v6/evlCitJPPCVCry0BZlEFb5-QjKc/AAAABQNsJG2bWWC2sKVkVbhRoduS0gP5wmnuMMrMxHmq0K4WEhlufZY7Em8SfLKCcLsFC__ZYgG_uDRab4c26xizLvK7o0TslvKsZVme87VDe45kGierYj3NxuXSdPKx7A.jpg",
release_date: 2020,
genre: 'movie',
description: "The rapid spread of an unknown infection has left an entire city in ungovernable chaos, but one survivor remains alive in isolation. It is his story.",
trailer: "https://www.youtube.com/embed/jQ8CCg1tOqc?autoplay=1&mute=1"
)

m9 = Movie.create(
title: "Before I Wake",
image: "https://m.media-amazon.com/images/M/MV5BNDc3NDIyMDUzMF5BMl5BanBnXkFtZTgwODI3MDg1OTE@._V1_.jpg",
release_date: 2016,
genre: 'movie',
description: "A couple adopt an orphaned child whose dreams - and nightmares - manifest physically as he sleeps.",
trailer: "https://www.youtube.com/embed/_TFc9pprTLE?autoplay=1&mute=1"
)

m10 = Movie.create(
title: "Gerald's Game",
image: "https://m.media-amazon.com/images/M/MV5BMzg0NGE0N2MtYTg1My00NTBkLWI5NjEtZTgyMDA0MTU4MmIyXkEyXkFqcGdeQXVyMTU2NTcyMg@@._V1_FMjpg_UX1000_.jpg",
release_date: 2017,
genre: 'movie',
description: "A couple tries to spice up their marriage in a remote lake house. After the husband dies unexpectedly, the wife is left handcuffed to their bed frame and must fight to survive and break free.",
trailer: "https://www.youtube.com/embed/OMJaeI0eocw?autoplay=1&mute=1"
)

m11 = Movie.create(
title: "The Haunting of Hill House",
image: "https://m.media-amazon.com/images/M/MV5BMTU4NzA4MDEwNF5BMl5BanBnXkFtZTgwMTQxODYzNjM@._V1_.jpg",
release_date: 2018,
genre: 'show',
description: "Flashing between past and present, a fractured family confronts haunting memories of their old home and the terrifying events that drove them from it.",
trailer: "https://www.youtube.com/embed/VxEEGi9V0kI?autoplay=1&mute=1"
)
m12 = Movie.create(
title: "The Haunting of Bly Manor",
image: "https://occ-0-1001-420.1.nflxso.net/dnm/api/v6/E8vDc_W8CLv7-yMQu8KMEC7Rrr8/AAAABQDpDWVsSOKe-1vxGFp0LVWRod_HTSZD_Uzqygs8HArkHdZ_26EeQPzV7ImZCi2RiX6-iJ07H8aU6OuUjibYnEhVw6T6J9IddLaZ.jpg?r=71d",
release_date: 2020,
genre: 'movie',
description: "After an au pair’s tragic death, Henry hires a young American nanny to care for his orphaned niece and nephew who reside at Bly Manor with the chef Owen, groundskeeper Jamie and housekeeper, Mrs. Grose.",
trailer: "https://www.youtube.com/embed/cxeiY2W03Mc?autoplay=1&mute=1"
)
m13 = Movie.create(
title: "Stranger Things 4",
image: "https://m.media-amazon.com/images/M/MV5BMDZkYmVhNjMtNWU4MC00MDQxLWE3MjYtZGMzZWI1ZjhlOWJmXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_FMjpg_UX1000_.jpg",
release_date: 2022,
genre: 'show',
description: "Still reeling from the events last year, the gang tries to move on with their lives. However, a threat is brewing both on Earth and the Upside Down.",
trailer: "https://www.youtube.com/embed/yQEondeGvKo?autoplay=1&mute=1"
)
m14 = Movie.create(
title: "Love, Death & Robots",
image: "https://m.media-amazon.com/images/M/MV5BYTNiYTNkNTAtYzE3ZS00ZDQ1LWEwZTYtZjI1NzYzMWJjY2U4XkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_FMjpg_UX1000_.jpg",
release_date: 2022,
genre: 'show',
description: "A collection of animated short stories that span various genres including science fiction, fantasy, horror and comedy.",
trailer: "https://www.youtube.com/embed/Xj2b0swdpX8?autoplay=1&mute=1"
)

m15 = Movie.create(
title: "Chilling Adventures of Sabrina",
image: "https://m.media-amazon.com/images/M/MV5BYmRiMDhhYzYtYjgwZS00NWY3LWIzYzktMjI4M2UwMjk2M2U0XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg",
release_date: 2020,
genre: 'show',
description: "As her 16th birthday nears, Sabrina must choose between the witch world of her family and the human world of her friends. Based on the Archie comic.",
trailer: "https://www.youtube.com/embed/gENO66DUgaQ?autoplay=1&mute=1"
)

# types = ['movie', 'show']

# 10.times do
#   Movie.create(
#     title: Faker::JapaneseMedia::Naruto.character,
#     image: Faker::Avatar.image,
#     release_date: rand(1..5),
#     genre: types.sample,
#     description: Faker::Movies::BackToTheFuture.quote,
#     trailer: Faker::Avatar.image
#   )
# end


# Creating Reviews

# movieIds = Movie.pluck(:id)
# userIds = User.pluck(:id)

# 20.times do
#   Review.create(
#     rating: rand(1..5),
#     comment: Faker::Movies::BackToTheFuture.quote,
#     movie_id: movieIds.sample,
#     user_id: userIds.sample
#   )
# end


puts "Seeding complete 🌼"