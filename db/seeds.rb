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
images = ["https://res.cloudinary.com/dghextejt/image/upload/v1536227846/b39f2e4326eb86a7f6d65dfa23063807.png",
"https://res.cloudinary.com/dghextejt/image/upload/v1536227803/079346113651-0.jpg",
"https://res.cloudinary.com/dghextejt/image/upload/v1536227875/c5990866339971.5b12d85ae2304.png",
"https://res.cloudinary.com/dghextejt/image/upload/v1536227962/too-many-watermelons-yetiland.jpg",
"https://res.cloudinary.com/dghextejt/image/upload/v1536227734/surreal-optical-illusion-paintings-by-rob-gonsalves-9.jpg",
"https://res.cloudinary.com/dghextejt/image/upload/v1536227712/london-paintings14_3173588a.jpg",
"https://res.cloudinary.com/dghextejt/image/upload/v1536227439/classic-paintings-into-geek-fandoms-lothlenan-2-59253e3d24de8__880.jpg",
"https://res.cloudinary.com/dghextejt/image/upload/v1536227688/image_315.jpg",
"https://res.cloudinary.com/dghextejt/image/upload/v1536227993/donald-trump-artworks-12.jpg",
"https://res.cloudinary.com/dghextejt/image/upload/v1536228006/8ca016ed0397ced72442be3ed39363ad.jpg"]

titles = ["Draw my spouse", "Draw my pet", "An English landscape", "Something for my Grandma", "A Homer Simpson sketch", "Cat Pictures", "Portrait", "Collage of my house", "A painting of my Dad", "Giraffe Pictures" ]

descriptions = ["The painting dominates the walls, every colour is bold and painted with such precise lines that it almost looks like a mosaic. They are curved yet sharply defined; they seem to stable but tumble at the same time. Like me I think, so stable but always in free-fall inside. I am soft but can lampoon people who spark my anxieties without meaning to. I am bright but I often feel painted onto the background, like there really isn't anything of substance inside. I hope there is. I hope there is more meaning in my bones than tumbling colours, chaotic and shallow.",
"The composition of the painting is curious. My eyes are moving from place to place unable to decide what the focus of the piece is. I can only imagine that the art reflects the chaos inside the artist. The colours are vivid, almost to the point of garish. The stroke lines are bold and the images from out of this world. It is both stunning and head-ache inducing, it's like a novel condensed onto a single page. I'd like to see it as a series of paintings with each idea given time and space to be expressed, to communicate the meaning that was inside its creator.",
"The painting takes me far away to another time, another life. In this picture the pebbles crunch beneath my winter boots and the waves lap in their steady rhythm, frigid and laced with sea-foam. Their melody is soporific, this music of water dragging eon rounded stones up and down the beach. Amongst the brush strokes of hues that are muted as if bleached by millions of years of sun, I can taste the salty air and feel it chill my icy face. From the upper left corner the gulls cry, circling until the fishing fleet returns. And there, right in the foreground is a rowboat of aging wood and paint that curls like potato peelings when I cut them too thick. It hardly looks sea worthy but I'm already in it, bobbing on the sun-speckled water, eyes on the horizon where blue meets blue.",
"The painting is full of contrasting colours and angry geometry. It's like the artist was full of rage, so furious that she couldn't bare to coordinate the colours. She wanted us to be affronted by the painting, but why? What is it she need us to see from her eyes? The shapes are tumbling as if they started together and are being separated by gravity. They are similar shapes like they began just the same but have changed over time, perhaps by small amounts over countless days. Now they each have a nugget of wisdom, a part of the puzzle, but they are too proud to concede their imperfections. They fall away, angry at the others for seeing their faults, demanding to be seen as still perfect. Still the ideal shape cast down by their creator.",
"The hills lay charcoal under the sallow moon, feeble rays struggled to shine through the broken layer of cloud. On each peak was a fortress overlooking the valley below, each no more than a barely discernible silhouette against the inky sky. In the valleys would be only the dwellings of the expendables, but even they could be problematic. Freelancers have a great bounty on their heads by default, the kind of money that could change the life of one of those bottom feeders to one of comfort and power. Between here and the gates would be either an eventless journey where Lila's guile cloaked her from both the electronic scanners and opportunistic kidnapping, or she would end her days in these lazy mounds of dirt and rock. She gazed around, how was it this landscape could be so deceptively dull? Running such a guantlet should call for flames and cheering crowds, but moss doesn't applaud and neither do woodland trees. This should be a place of pristine boredom, not foes and danger.",
"Urban monotony, drab streets, graffi on walls, dimly lit passageways, tram lines, double decker buses, subway stations, traffic jams, towering condo blocks, busy hum of city life, honking horns, smog, rows of boutique stores, corner grocery store, stalls full of produce spilling out of the green grocers onto the wide avenue.",

]

bios = ["When my hand moves over the canvass it's almost like my mind is directing it without me, odd perhaps, but that's the way it is. My hand moves instinctively to the right spot, building a new picture, often one I have never seen before. In these fantastical worlds I see reflections of my own mind, the way I think, but there is something else there too. I don't know what, perhaps I just imagine it, but when I paint I feel closest to our creator and it gives me a peace and mental calmness I cannot find another way",
"Art is part of our human soul. It is dreams emerging from a part of ourselves, a way to communicate with the deeper self of both the artist and others. The same piece invokes different emotions depending on the person, their mood, their time of life. Art is pictures; art is sculpture; art is the creative word; art is music. We are all artists in our various ways, all born to be creative.",
"Our creativity brings our dreams to life; inspiring, enchanting, bringing us closer to God. In art our spirits rise, in stories we are enthralled and elevated. With creativity we make connections between disparate people, we learn that through our many lenses we are seeing the same whole, only the path before our feet is still blurred. Life should never be art vs science, but a beautiful marriage of the two.",
"How can one describe art? A work of art can be a painting, a drawing, a piece of music, a piece of theatre. A piece of art is anything that is a source of inspiration to others, something that can be heard in the depths of their bodies, right in the core of their person, where it resonates its deepest meaning. What that meaning is, is up to you. Art has the ability to express a thousand words in a second, and a hundred different stories can be heard in each note of a song. The arts are the result of us using the gift of imagination and rewarding it to the world for others to enjoy, as well as ourselves. Art is wholly and completely selfless, and because of this, it is utterly and shamelessly beautiful.",
"I’ve spent the last 40 years of my photographic career investigating movement and its expressive potential. My inspiration has always been photography’s ability to stop time and reveal what the naked eye cannot see. What intrigues me is making images that confound and confuse the viewer, but that the viewer knows, or suspects, really happened."
]


a = User.create(
    first_name: "Nick",
    last_name: "Johnson",
    username: "NJ the juiceman",
    email: "nick@bogdanoff.com",
    bio: "My names Nick and I'm a cool guy, some people think I'm not cool but I am cool. I like pictures of me on unicorns",
    password: "123123",
    photo: "https://res.cloudinary.com/dghextejt/image/upload/v1536310292/Nick.jpg"
    )

d = User.create(
    first_name: "Rick",
    last_name: "Slick",
    username: "Ricky",
    email: "rick.slick@gmail.com",
    bio: bios.sample,
    password: "123123"
    )

c = Commission.create!(
  title: "Post-modern landscape",
  description: "I am a keen collector of Post-modern art and want to commission my own landscape full of despair and agony. I’m inspired by the work of Jackson Pollock and the abstract expressionists – if your work is similar to his then perhaps you would be the artist for me. A complex texture, vivid colours, and a-temporality are but some of the themes that I am looking for. A poem in colours, a half-formed idea in images, a dream.",
  amount: "1000",
  photo: open("https://res.cloudinary.com/dghextejt/image/upload/v1536252823/kill.jpg"),
  user: d)

b = User.create(
    first_name: "Christian",
    last_name: "Bell",
    username: "ChristianBell",
    bio: "I can't abide the art that's printed by the thousands. I'm not an carbon copy person and I don't want carbon copy art. I want something beautiful on the wall, but I want to know the artist that made it. I want to know what moved them to make something so beautiful – and to me it always is. Even pain and sorrow is beautiful in art, it shows us who we are, who we have been, and helps us to see where we're heading. So when I see those reproductions I see a corporation hijacking something that should be personal and making it ugly – no matter what scene it represents. Art takes time, art takes love, I'll take an original over a copy any day.",
    email: "christianBell@bell.com",
    password: "123123",
    photo: "https://res.cloudinary.com/dghextejt/image/upload/v1536310386/Christian.jpg"
    )

art1 = Art.new(
  title: "img1",
  user: b
  )
art1.photo = open('https://res.cloudinary.com/dghextejt/image/upload/v1536140516/kbthwperzeczpfdtoh2d.jpg')
art1.save

art2 = Art.new(
  title: "img2",
  user: b
  )
art2.photo = open('https://res.cloudinary.com/dghextejt/image/upload/v1536140578/ojc0glalg88czrgcjjil.jpg')
art2.save

art3 = Art.new(
  title: "img3",
  user: b
  )
art3.photo = open('https://res.cloudinary.com/dghextejt/image/upload/v1536140659/uermp4tbqyjqgbb4sjoh.jpg')
art3.save

art4 = Art.new(
  title: "img4",
  user: b
  )
art4.photo = open('https://res.cloudinary.com/dghextejt/image/upload/v1536140770/kql6nar04tz0ykynbdwi.jpg')
art4.save

art5 = Art.new(
  title: "img5",
  user: b
  )
art5.photo = open('https://res.cloudinary.com/dghextejt/image/upload/v1536160815/oa1scadi197xw4e7qyf8.jpg')
art5.save

art6 = Art.new(
  title: "img6",
  user: b
  )
art6.photo = open('https://res.cloudinary.com/dghextejt/image/upload/v1536160839/xpui9pf2xoj57dsm2p4b.jpg')
art6.save


# req = Request.create!(
#   description: "I will do this for you!",
#   commission: c,
#   user: b,
#   price_cents: 15
# )

# ord = Order.create!(
#   state: "pending",
#   amount_cents: 1500,
#   user: a,
#   request: req
#   )





puts 'Creating 10 Users...'
count = 0
10.times do
  a = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    username: Faker::Internet.username,
    email: Faker::Internet.email,
    bio: bios.sample,
    password: "123123"
  )
  Art.create!(
    title: Faker::BojackHorseman.character,
    photo: open(images[count]),
    user: a)
  count += 1
end

# puts 'Creating 10 Arts...'
# 20.times do
#   Art.create!(
#     title: Faker::BojackHorseman.character,
#     photo: open(images.sample),
#     user: User.all.sample
#     )
# end

artists = User.all.select { |user| user.arts }

puts 'Creating 10 Commissions...'
  Commission.create!(
    title: "Labrador Portrait",
    description: "My Labrador is called Jamie and she is one of the cutest dogs that I’ve ever seen, so we decided to commission an artist to paint her whilst she’s still in her prime! I’m pretty open to requests from different people although we are probably after a painting rather than a sculpture or collage. You would have to come and see her in person as I don’t think you’d be able to really see her just from photos – we live in Cardiff so that might be a limiting factor in your decision. Let me know what you think in your request – we’d be interested to see what pose you think she would look best in as well.",
    amount: "400-600",
    photo: open(images.sample),
    user: artists.sample
  )
  Commission.create!(
    title: "St Ives Landscape",
    description: "I spent my childhood growing up in St Ives and would like a landscape painting that captures my memories. It was a very special place to me that has now been ruined by tourism so you would be working mainly off the old photos of my father who was a fisherman in the region. I mainly had in mind a landscape but a seascape may also be interesting as the cliffs around there are inspiring. I would say I’m generally looking for a water colour artist – the main challenge of the project is going to be to bring to life some of these black and white photos I have.",
    amount: "100-120",
    photo: open(images.sample),
    user: artists.sample
  )
  Commission.create!(
    title: "Garage Graffiti ",
    description: "I’ve just moved into a new house in Shoreditch and I was slightly worried that I wasn’t fitting in with the neighbourhood so was wondering if someone could do some nice Banksy-esque graffiti on my garage. My house is a new build and doesn’t quite fit in with the exposed brick aesthetic that you find here so you’d really be helping me out. Any aspiring graffiti artists please send me requests – you do have to be good though, this is not just an invitation to vandalise my house. You know who you are.",
    amount: "70-100",
    photo: open(images.sample),
    user: artists.sample
  )
  Commission.create!(
    title: "David Beckham Sketch ",
    description: "I love everything David Beckham, not only did he have a distinguished career as a footballer but he also is an ambassador for England on the international stage and is a credit to the UK. I have a collection of his different shirts but thought about getting a sketch done, just because I bloody love him. Only a sketch mind, I think an oil painting would be a bit much, so please request only if you’re good at drawing.",
    amount: "20-50",
    photo: open(images.sample),
    user: artists.sample
  )
  Commission.create!(
    title: "Tribal Tatoo Design",
    description: "I'd like a tribal tattoo designed for my left bicep. I work as a bouncer but i'm only 5'2 and weight 143lbs and i feel having a tattoo would make me look more intimidating, strong and somewhat exotic ( ladies :wink: ).  Happy with any design as long as it will make me feel secure. SERIOUS ARTISTS ONLY.",
    amount: "10-50",
    photo: open(images.sample),
    user: artists.sample
  )
  Commission.create!(
    title: "Ruby",
    description: "I recently graduated from a coding bootcamp and developed a surprising affinity for coffee. As a result, i'd like to get a drawing of a coffee bean encrusted with rubies as (nod to my favourite programming language, PHP) which i could then mail to my numerous friends and watch them slowly descend into madness.",
    amount: "60",
    photo: open(images.sample),
    user: artists.sample
  )
  Commission.create!(
    title: "Logo LuxLeaz",
    description: "Okay okay okay! I am making my new website Lux leaz and nothing says luxury like a cheap spinning logo! Therefore I'm looking for a talented artist/designer to make one that I can use for my website. It needs to be able to spin slow but also fast, so it impresses the clients who will be leasing out yachts and stuff like that, you get me?",
    amount: "1000-1500",
    photo: open(images.sample),
    user: artists.sample
  )
  Commission.create!(
    title: "My Grandmother, Acrylic",
    description: "I would like to get an acrylic painting of my grandmother, Doris, to commemorate her 90th birthday. Looking for an experienced portraiture artist to take on this one-of-a-kind, personal project and bring her likeness to life on a 90 x 110 cm canvas. The piece will most likely be hung above our fireplace (see attached photos for reference). If possible, i’d like this done by November 3rd, a week before her birthday.",
    amount: "70-130",
    photo: open(images.sample),
    user: artists.sample
  )



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
