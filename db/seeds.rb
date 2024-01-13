# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Post.destroy_all
User.destroy_all
Comment.destroy_all

User.create!(email: "alice@hotmail.fr", password: "azerty", password_confirmation: "azerty", nickname: "Alice" )

user1 = User.create!(email: "camille@hotmail.fr", password: "azerty", password_confirmation: "azerty", nickname: "Camille" )

file = File.open("app/assets/images/biscuits-orange.png")
post1 = Post.new(
  user: user1,
  title: "Biscuits de Noël Épicés à l'Orange 🍊",
  description: "Célébrez la saison festive avec ces délicieux biscuits de Noël, combinant la douceur des oranges et le piquant des épices. Parfaits pour accompagner un thé chaud ou un verre de lait, ces biscuits sont idéaux pour répandre la joie des fêtes autour de vous. Faciles à réaliser, ils seront un régal pour petits et grands.",
  ingredients: "250g de farine tout usage 1/2 cuillère à café de bicarbonate de soude Une pincée de sel 2 cuillères à café de cannelle moulue 1 cuillère à café de gingembre moulu 1/4 cuillère à café de clous de girofle moulus Zeste d'une orange 100g de beurre non salé, à température ambiante 150g de sucre brun 1 gros œuf 2 cuillères à soupe de sirop d'érable Sucre glace pour la décoration",
  difficulty: "Moyenne",
  preparation_time: 40,
  image_url: "https://www.papillesetpupilles.fr/",
  )
post1.photo.attach(io: file, filename: "biscuits-orange.png", content_type: "image/png")
post1.save

user2 = User.create!(email: "Paul@hotmail.fr", password: "azerty", password_confirmation: "azerty", nickname: "Popol-du-33" )

file = File.open("app/assets/images/sable.png")
post2 = Post.new(
  user: user2,
  title: "Sablés de Noël Cannelle-Miel 🍯",
  description: "Rien ne dit « Noël » mieux que l'arôme chaleureux de la cannelle et du miel se mélangeant dans l'air. Ces sablés à la cannelle et au miel sont la quintessence des saveurs festives. Faciles à préparer, ces biscuits croustillants à l'extérieur et moelleux à l'intérieur sont parfaits pour un goûter cosy ou pour accompagner un café. Ils sont également idéaux pour offrir et partager la joie des fêtes.",
  ingredients: "300g de farine tout usage
  1 cuillère à café de levure chimique
  2 cuillères à café de cannelle moulue
  1/4 cuillère à café de sel
  150g de beurre non salé, ramolli
  100g de sucre
  1 gros œuf
  3 cuillères à soupe de miel
  Sucre glace pour la décoration",
  difficulty: "Facile",
  preparation_time: 20,
  image_url: "https://lacuisinedebernard.com/",
  )
post2.photo.attach(io: file, filename: "sable.png", content_type: "image/png")
post2.save

file = File.open("app/assets/images/amuse-bouche.png")
post3 = Post.new(
  user: user2,
  title: "Crostinis de Fête au Chèvre Doux 🧀",
  description: "Donnez le ton de votre réveillon avec ces crostinis raffinés et festifs, qui allient la douceur de la crème de chèvre à l'élégance du saumon fumé. Sur une base croustillante, chaque bouchée est un accord parfait de saveurs et de textures, rehaussé par une touche d'aneth frais et de baies roses. Ces amuses-bouche sophistiqués sont aussi beaux que bons et promettent d'éveiller vos papilles dès le premier instant.",
  ingredients: "1 baguette artisanale, tranchée en rondelles
  200 g de saumon fumé, tranché finement
  150 g de fromage de chèvre frais
  2 cuillères à soupe de crème fraîche épaisse
  Zeste d'1 citron bio
  Aneth frais, haché finement
  Baies roses, écrasées légèrement
  Huile d'olive extra vierge
  Sel et poivre noir fraîchement moulu",
  difficulty: "Difficile",
  preparation_time: 35,
  image_url: "https://www.ladycoquillette.fr/2020/12/06/verrines-de-f%C3%AAte-%C3%A0-la-pur%C3%A9e-de-courge-p%C3%A9toncles-crumble-noisettes-parmesan/",
  )
post3.photo.attach(io: file, filename: "amuse-bouche.png", content_type: "image/png")
post3.save

user3 = User.create!(email: "Denise@hotmail.fr", password: "azerty", password_confirmation: "azerty", nickname: "Chef-Denise" )

file = File.open("app/assets/images/verrines.png")
post4 = Post.new(
  user: user3,
  title: "Éclats de Noël : Verrines Saumon-Avocat 🤶🏻",
  description: "Illuminez votre table de réveillon avec ces verrines colorées et festives qui marient la fraîcheur de l'avocat à la délicatesse du saumon fumé. Superposant harmonieusement des couches de textures et de saveurs, ces verrines offrent une expérience culinaire aussi joyeuse que Noël lui-même. La douceur de la mousse d'avocat contraste avec la saveur riche du saumon, tandis que les œufs de truite apportent une touche de luxe et d'élégance. Préparées en quelques minutes, elles sont parfaites pour captiver vos invités dès l'apéritif.",
  ingredients: "Pour 6 verrines :
  200 g de saumon fumé, coupé en petits dés
  2 avocats mûrs, écrasés
  150 g de fromage frais type Philadelphia
  Le jus d'1 citron vert
  2 cuillères à soupe de crème fraîche liquide
  1 petit bouquet d'aneth frais, haché
  Œufs de truite ou de saumon pour le garnissage
  Ciboulette fraîche, finement ciselée",
  difficulty: "Difficile",
  preparation_time: 45,
  image_url: "https://cuisine-addict.com/",
  )
post4.photo.attach(io: file, filename: "verrines.png", content_type: "image/png")
post4.save

user4 = User.create!(email: "Marc@hotmail.fr", password: "azerty", password_confirmation: "azerty", nickname: "Marco" )

file = File.open("app/assets/images/gateaux-noel.png")
post5 = Post.new(
  user: user4,
  title: "Joyaux Givrés : Bonbons Choco-Menthe de Noël 🍬",
  description: "Évoquant une forêt enneigée sous un ciel étoilé, ces bonbons au chocolat et à la menthe sont de petits trésors qui fondent délicieusement en bouche. Alliant le riche velouté du chocolat noir et la fraîcheur piquante de la menthe, ces douceurs sont le parfait équilibre entre indulgence et légèreté. Présentés dans de petites caissettes scintillantes, ils sont comme des cadeaux qui raviront les yeux et les palais. À offrir ou à partager, ils apporteront une note féérique à votre fin d'année.",
  ingredients: "Pour environ 20 bonbons :
  200 g de chocolat noir de qualité, haché
  100 g de chocolat blanc, haché
  3 cuillères à soupe de crème épaisse
  1/2 cuillère à café d'extrait de menthe poivrée
  Quelques gouttes de colorant alimentaire vert
  Paillettes comestibles ou sucre pétillant pour la décoration
  Petits moules à bonbons ou caissettes en papier",
  difficulty: "Moyenne",
  preparation_time: 15,
  image_url: "https://blog.julieandrieu.com/billets-dhumeur/mes-menus-de-noel",
  )
post5.photo.attach(io: file, filename: "gateaux-noel.png", content_type: "image/png")
post5.save


Comment.create!(
  content: "C'est une excellente recette pour Noël, mes invités ont adoré !",
  user: user3,
  post: post1,
)

Comment.create!(
  content: "Miam 😋",
  user: user4,
  post: post1,
)

Comment.create!(
  content: "Les sablés étaient délicieux et ont apporté une touche festive à notre table de Noël.",
  user: user4,
  post: post2
)

Comment.create!(
  content: "J'ai essayé les crostinis pour mon dîner de réveillon et ils ont été un véritable succès !",
  user: user1,
  post: post3
)

Comment.create!(
  content: "Les verrines étaient aussi belles que savoureuses. Un régal pour les yeux et les papilles !",
  user: user2,
  post: post4
)

Comment.create!(
  content: "Les bonbons choco-menthe étaient la parfaite note sucrée pour finir notre soirée de Noël.",
  user: user3,
  post: post5
)
