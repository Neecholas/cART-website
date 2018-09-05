# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Order.destroy_all
Request.destroy_all
Commission.destroy_all
Art.destroy_all
User.destroy_all
images = ["https://res.cloudinary.com/dghextejt/image/upload/v1535634399/hfmdz5h5ryrlaixtptxn.jpg", "https://res.cloudinary.com/dghextejt/image/upload/v1535450755/samples/sheep.jpg",
"http://res.cloudinary.com/dghextejt/image/upload/v1535450755/samples/people/smiling-man.jpg",
"https://res.cloudinary.com/dghextejt/image/upload/v1535450758/samples/animals/three-dogs.jpg",
"https://res.cloudinary.com/dghextejt/image/upload/v1535450751/samples/animals/cat.jpg",
"https://res.cloudinary.com/dghextejt/image/upload/v1535450757/samples/bike.jpg"]

titles = ["A small King Charles Spaniel", "My children", "An English landscape", "Something for my Grandma", "A Homer Simpson sketch", "Cat Pictures", "Portrait", "Collage of my house", "A painting of my Dad", "Giraffe Pictures" ]

descriptions = ["The painting dominates the walls, every colour is bold and painted with such precise lines that it almost looks like a mosaic. They are curved yet sharply defined; they seem to stable but tumble at the same time. Like me I think, so stable but always in free-fall inside. I am soft but can lampoon people who spark my anxieties without meaning to. I am bright but I often feel painted onto the background, like there really isn't anything of substance inside. I hope there is. I hope there is more meaning in my bones than tumbling colours, chaotic and shallow.",
"The composition of the painting is curious. My eyes are moving from place to place unable to decide what the focus of the piece is. I can only imagine that the art reflects the chaos inside the artist. The colours are vivid, almost to the point of garish. The stroke lines are bold and the images from out of this world. It is both stunning and head-ache inducing, it's like a novel condensed onto a single page. I'd like to see it as a series of paintings with each idea given time and space to be expressed, to communicate the meaning that was inside its creator.",
"The painting takes me far away to another time, another life. In this picture the pebbles crunch beneath my winter boots and the waves lap in their steady rhythm, frigid and laced with sea-foam. Their melody is soporific, this music of water dragging eon rounded stones up and down the beach. Amongst the brush strokes of hues that are muted as if bleached by millions of years of sun, I can taste the salty air and feel it chill my icy face. From the upper left corner the gulls cry, circling until the fishing fleet returns. And there, right in the foreground is a rowboat of aging wood and paint that curls like potato peelings when I cut them too thick. It hardly looks sea worthy but I'm already in it, bobbing on the sun-speckled water, eyes on the horizon where blue meets blue.",
"The painting is full of contrasting colours and angry geometry. It's like the artist was full of rage, so furious that she couldn't bare to coordinate the colours. She wanted us to be affronted by the painting, but why? What is it she need us to see from her eyes? The shapes are tumbling as if they started together and are being separated by gravity. They are similar shapes like they began just the same but have changed over time, perhaps by small amounts over countless days. Now they each have a nugget of wisdom, a part of the puzzle, but they are too proud to concede their imperfections. They fall away, angry at the others for seeing their faults, demanding to be seen as still perfect. Still the ideal shape cast down by their creator.",
"The hills lay charcoal under the sallow moon, feeble rays struggled to shine through the broken layer of cloud. On each peak was a fortress overlooking the valley below, each no more than a barely discernible silhouette against the inky sky. In the valleys would be only the dwellings of the expendables, but even they could be problematic. Freelancers have a great bounty on their heads by default, the kind of money that could change the life of one of those bottom feeders to one of comfort and power. Between here and the gates would be either an eventless journey where Lila's guile cloaked her from both the electronic scanners and opportunistic kidnapping, or she would end her days in these lazy mounds of dirt and rock. She gazed around, how was it this landscape could be so deceptively dull? Running such a guantlet should call for flames and cheering crowds, but moss doesn't applaud and neither do woodland trees. This should be a place of pristine boredom, not foes and danger.",
"Urban monotony, drab streets, graffi on walls, dimly lit passageways, tram lines, double decker buses, subway stations, traffic jams, towering condo blocks, busy hum of city life, honking horns, smog, rows of boutique stores, corner grocery store, stalls full of produce spilling out of the green grocers onto the wide avenue.",

]

bios = ["When my hand moves over the canvass it's almost like my mind is directing it without me, odd perhaps, but that's the way it is. My hand moves instinctively to the right spot, building a new picture, often one I have never seen before. In these fantastical worlds I see reflections of my own mind, the way I think, but there is something else there too. I don't know what, perhaps I just imagine it, but when I paint I feel closest to our creator and it gives me a peace and mental calmness I cannot find another way",
"Art is part of our human soul. It is dreams emerging from a part of ourselves, a way to communicate with the deeper self of both the artist and others. The same piece invokes different emotions depending on the person, their mood, their time of life. Art is pictures; art is sculpture; art is the creative word; art is music. We are all artists in our various ways, all born to be creative.",
 "I can't abide the art that's printed by the thousands. I'm not an carbon copy person and I don't want carbon copy art. I want something beautiful on the wall, but I want to know the artist that made it. I want to know what moved them to make something so beautiful – and to me it always is. Even pain and sorrow is beautiful in art, it shows us who we are, who we have been, and helps us to see where we're heading. So when I see those reproductions I see a corporation hijacking something that should be personal and making it ugly – no matter what scene it represents. Art takes time, art takes love, I'll take an original over a copy any day.",
"Our creativity brings our dreams to life; inspiring, enchanting, bringing us closer to God. In art our spirits rise, in stories we are enthralled and elevated. With creativity we make connections between disparate people, we learn that through our many lenses we are seeing the same whole, only the path before our feet is still blurred. Life should never be art vs science, but a beautiful marriage of the two.",
"How can one describe art? A work of art can be a painting, a drawing, a piece of music, a piece of theatre. A piece of art is anything that is a source of inspiration to others, something that can be heard in the depths of their bodies, right in the core of their person, where it resonates its deepest meaning. What that meaning is, is up to you. Art has the ability to express a thousand words in a second, and a hundred different stories can be heard in each note of a song. The arts are the result of us using the gift of imagination and rewarding it to the world for others to enjoy, as well as ourselves. Art is wholly and completely selfless, and because of this, it is utterly and shamelessly beautiful.",
"I’ve spent the last 40 years of my photographic career investigating movement and its expressive potential. My inspiration has always been photography’s ability to stop time and reveal what the naked eye cannot see. What intrigues me is making images that confound and confuse the viewer, but that the viewer knows, or suspects, really happened."
]


a = User.create(
    first_name: "Nick",
    last_name: "Johnson",
    username: "NJ the juiceman",
    email: "nick@bogdanoff.com",
    password: "123123"
    )

Art.create!(
  title: "Nick",
  photo: open(images.sample),
  user: a)

c = Commission.create!(
  title: "Monet Painting",
  description: "The tone of the painting is muted, the style reminiscent of Monet. Each stroke had a smudging quality that rendered the image watery, like a reflection in a rippled puddle. The scene is a street, London I'll bet, the umbrella bearing pedestrians battle against rain and the red double-deckers and black cabs rumble by. It reminds me of Oxford Street, looking out of a rain-splattered window at the rivers of people that moved in each direction. Like in this painting they moved so randomly, pushing against one another, flowing, like water. Perhaps to this artist that's what we are, small drops in a sky full of rain, each one looking out and saying to ourselves “Wow, that sure is a lot of rain.”",
  amount: 1000,
  photo: open(images.sample),
  user: a)

b = User.create(
    first_name: "Christian",
    last_name: "Bell",
    username: "ChristianBell",
    email: "christianBell@bell.com",
    password: "123123"
    )

Art.create(
  title: "img1",
  photo: "https://res.cloudinary.com/dghextejt/image/upload/v1536140516/kbthwperzeczpfdtoh2d.jpg",
  user: b
  )
Art.create(
  title: "img2",
  photo: "https://res.cloudinary.com/dghextejt/image/upload/v1536140578/ojc0glalg88czrgcjjil.jpg",
  user: b
  )
Art.create(
  title: "img3",
  photo: "https://res.cloudinary.com/dghextejt/image/upload/v1536140659/uermp4tbqyjqgbb4sjoh.jpg",
  user: b
  )
Art.create(
  title: "img4",
  photo: "https://res.cloudinary.com/dghextejt/image/upload/v1536140770/kql6nar04tz0ykynbdwi.jpg",
  user: b
  )


Request.create!(
  description: "I will do this for you!",
  commission: c,
  user: b,
  price_cents: 15
)



puts 'Creating 10 Users...'
15.times do
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    username: Faker::Internet.username,
    email: Faker::Internet.email,
    bio: bios.sample,
    password: "123123"
  )
end

puts 'Creating 10 Arts...'
20.times do
  Art.create!(
    title: Faker::BojackHorseman.character,
    photo: open(images.sample),
    user: User.all.sample
    )
end

puts 'Creating 10 Commissions...'
10.times do
  Commission.create!(
    title: titles.sample,
    description: descriptions.sample,
    amount: rand(1..15) * 10,
    photo: open(images.sample),
    user: User.all.sample
  )
end

# puts "Creating 10 Requests..."
  # 10.times do
  #   Request.create!(
  #     description: "I will do this for you!",
  #     commission_id: Commission.all.sample.id,
  #     user: User.all.sample,

  #     price_cents: rand(10..50)
  #   )
  # end

puts 'Finished!'
