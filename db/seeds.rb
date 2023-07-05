require "open-uri"

User.destroy_all
Category.destroy_all
Vehicule.destroy_all

# créer les catégories

Category.create!(name: "Aerial")
Category.create!(name: "Maritime")
Category.create!(name: "Land")
Category.create!(name: "Multi-purpose")

################################################################################
# créer des users
# seeding images cloudinary

file_fred = URI.open("https://res.cloudinary.com/dmgpqeugv/image/upload/v1685389484/development/owner/fred-pierrafeu_ijszpl.jpg")
pierrafeu = User.new(
  email: 'Fred@pierrafeu.com',
  password: '123456',
  first_name: 'Fred',
  last_name: 'Pierrafeu',
  phone_number: '0612345678'
)
pierrafeu.avatar.attach(io: file_fred, filename: "fred-pierrafeu_ijszpl.jpg", content_type: "image/jpg")
pierrafeu.save

######
file_mickael = URI.open("https://res.cloudinary.com/dmgpqeugv/image/upload/v1685388827/development/owner/Michael_Knight_aqlrrs.webp")
k2000 = User.new(
  email: 'mickaelknight@k2000.com',
  password: '123456',
  first_name: 'Mickael',
  last_name: 'Knight',
  phone_number: '0987654321'
)
k2000.avatar.attach(io: file_mickael, filename: "Michael_Knight_aqlrrs.webp", content_type: "image/webp")
k2000.save

######
file_harry = URI.open("https://res.cloudinary.com/dmgpqeugv/image/upload/v1685388826/development/owner/Harry_Potter_u4ge5r.webp")
harry = User.new(
  email: 'harrypotter@griffondor.com',
  password: '123456',
  first_name: 'Harry',
  last_name: 'Potter',
  phone_number: '0612345679'
)
harry.avatar.attach(io: file_harry, filename: "Harry_Potter_u4ge5r.webp", content_type: "image/webp")
harry.save

######
file_superman = URI.open("https://res.cloudinary.com/dmgpqeugv/image/upload/v1685388828/development/owner/superman_mtewf9.png")
superman = User.new(
  email: 'clark.kent@superman.com',
  password: '123456',
  first_name: 'Clark',
  last_name: 'Kent',
  phone_number: '0612345678'
)
superman.avatar.attach(io: file_superman, filename: "superman_mtewf9.png", content_type: "image/png")
superman.save

######
file_wonderwoman = URI.open("https://res.cloudinary.com/dmgpqeugv/image/upload/v1685388827/development/owner/wonderwoman_i1j79s.webp")
wonderwoman = User.new(
  email: 'diana.prince@wonderwoman.com',
  password: '123456',
  first_name: 'Diana',
  last_name: 'Prince',
  phone_number: '0622345678'
)
wonderwoman.avatar.attach(io: file_wonderwoman, filename: "wonderwoman_i1j79s.webp", content_type: "image/webp")
wonderwoman.save

######
file_aladdin = URI.open("https://res.cloudinary.com/dmgpqeugv/image/upload/v1685388826/development/owner/Aladdin_gd7rie.jpg")
aladdin = User.new(
  email: 'aladdin@disney.com',
  password: '123456',
  first_name: 'Aladdin',
  last_name: 'Ababoua',
  phone_number: '0967654321'
)
aladdin.avatar.attach(io: file_aladdin, filename: "Aladdin_gd7rie.jpg", content_type: "image/jpg")
aladdin.save

######
file_jacksparrow = URI.open("https://res.cloudinary.com/dmgpqeugv/image/upload/v1685388827/development/owner/jack_sparrow_bemvma.jpg")
jacksparrow = User.new(
  email: 'jacksparrow@disney.com',
  password: '123456',
  first_name: 'Jack',
  last_name: 'Sparrow',
  phone_number: '0968654321'
)
jacksparrow.avatar.attach(io: file_jacksparrow, filename: "jack_sparrow_bemvma.jpg", content_type: "image/jpg")
jacksparrow.save

######
file_batman = URI.open("https://res.cloudinary.com/dmgpqeugv/image/upload/v1685388826/development/owner/batman_ui7cfb.jpg")
batman = User.new(
  email: 'brucewayne@batman.com',
  password: '123456',
  first_name: 'Bruce',
  last_name: 'Wayne',
  phone_number: '0612845678'
)
batman.avatar.attach(io: file_batman, filename: "batman_ui7cfb.jpg", content_type: "image/png")
batman.save

######
file_naruto = URI.open('https://res.cloudinary.com/dmgpqeugv/image/upload/v1685388827/development/owner/naruto_ltv9y6.jpg')
naruto = User.new(
  email: 'naruto.uzumaki@kishimoto.com',
  password: '123456',
  first_name: 'Naruto',
  last_name: 'Uzumaki',
  phone_number: '0612945678'
)
naruto.avatar.attach(io: file_naruto, filename: "naruto_ui7cfb.jpg", content_type: "image/png")
naruto.save

######
file_ironman = URI.open('https://res.cloudinary.com/dmgpqeugv/image/upload/v1685388827/development/owner/tony_strak_y8t6qx.jpg')
ironman = User.new(
  email: 'tony.stark@ironman.com',
  password: '123456',
  first_name: 'Tony',
  last_name: 'Stark',
  phone_number: '0622345678'
)
ironman.avatar.attach(io: file_ironman, filename: "tony_strak_y8t6qx.jpg", content_type: "image/jpg")
ironman.save


################################################################################
# créer des véhicules associés aux users


image_files_pierrafeu = [
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685613174/development/vehicules/pierreafeu/pierreafeu_1_mul9rh.jpg',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685613173/development/vehicules/pierreafeu/pierreafeu_2_regyup.jpg',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685613173/development/vehicules/pierreafeu/pierreafeu3_erlvzn.avif',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685613173/development/vehicules/pierreafeu/pierresfeu4_qmqjia.avif',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685641878/development/vehicules/pierreafeu/pierreafeu_5_mmm2wx.jpg'
]

######
voiture_pierrafeu = Vehicule.new(
  name: 'Voiture à pédales',
  description: "Besoin d'un moyen de transport préhistorique ? Une envie de se muscler les cuisses tout en s’amusant ? Louez notre incroyable voiture à pédales et remontez dans le temps. Avec ce véhicule écologique, vous pourrez explorer le monde des dinosaures, rencontrer des voisins des cavernes et vivre des aventures paléolithiques. Soyez prêt à pousser vos jambes, à fredonner 'Yabba Dabba Doo !' et à construire des maisons en pierre. Attention aux T-Rex affamés !",
  price: '100',
  user_id: pierrafeu.id,
  category: Category.find_by(name: 'Land'),
  address: 'Souppes-sur-Loing, France',
  latitude: 2.733,
  longitude: 48.1833
)

image_files_pierrafeu.each do |file|
  voiture_pierrafeu.pictures.attach(io: URI.open(file), filename: file)
end
voiture_pierrafeu.save

######
image_files_k2000 = [
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685613174/development/vehicules/Kitt%20K2000/kitt_2_onxozz.jpg',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685613174/development/vehicules/Kitt%20K2000/kitt_int_3_mcxzvh.jpg',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685613173/development/vehicules/Kitt%20K2000/kitt_1_url54i.jpg',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685613172/development/vehicules/Kitt%20K2000/kitt_4_xfqjrj.jpg',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685642131/development/vehicules/Kitt%20K2000/kitt_5_hgbbu3.jpg'
]

voiture_k2000 = Vehicule.new(
  name: 'Kitt',
  description: "En quête d'une voiture high-tech à intelligence artificielle ? Chat-GPT peut retourner se coucher, : Louez ma K200, la voiture intelligente la plus impressionnante jamais créée. Dotée d'une IA avancée, de gadgets futuristes et d'une carrosserie indémodable, cette voiture vous emmènera dans des missions pleines d'action. Soyez prêt à parler à votre voiture, à faire des sauts spectaculaires et à défendre la justice. Attention aux hackers malveillants et aux situations où vous avez besoin de turbo boost à la dernière seconde !",
  price: '359',
  user_id: k2000.id,
  category: Category.find_by(name: 'Land'),
  address: 'Perpignan, France',
  latitude:	42.6886,
  longitude: 2.89483
)

image_files_k2000.each do |file|
  voiture_k2000.pictures.attach(io: URI.open(file), filename: file)
end
voiture_k2000.save

######
image_files_harry = [
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685613175/development/vehicules/Nimbus%202000/nimbus_4_wbu8kz.jpg',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685613174/development/vehicules/Nimbus%202000/nimbus_5_v4bop6.jpg',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685613174/development/vehicules/Nimbus%202000/Nimbus2000_1_x6zm5b.webp',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685613173/development/vehicules/Nimbus%202000/Nimbus_2000_2_jo329w.webp',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685613174/development/vehicules/Nimbus%202000/nimbus2000_3_itmbor.jpg'
]

voiture_harry = Vehicule.new(
  name: 'Nimbus 2000',
  description: "Êtes-vous prêt à survoler les cieux avec style et magie ? Louez mon Nimbus 2000, le balai volant le plus rapide et le plus maniable de tout Poudlard. Que vous soyez un sorcier chevronné ou un débutant en quête de sensations fortes, le Nimbus 2000 vous emmènera dans une aventure aérienne que vous n'oublierez jamais. Quidditch, escapades nocturnes ou simplement échapper aux embouteillages moldus, ce balai est l'accessoire indispensable pour tout sorcier moderne. Attention aux chutes vertigineuses et aux courants d'air imprévisibles !",
  price: '599',
  user_id: harry.id,
  category: Category.find_by(name: 'Aerial'),
  address: 'London, England, UK',
  latitude:		51.5073,
  longitude: 	-0.1277
)

image_files_harry.each do |file|
  voiture_harry.pictures.attach(io: URI.open(file), filename: file)
end
voiture_harry.save

######
image_files_superman = [
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685613171/development/vehicules/cape%20superman/cape_2_md9lbe.jpg',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685613169/development/vehicules/cape%20superman/Cape_1_tzqq6t.webp',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685392847/development/vehicules/cape%20superman/chaussettes-superman-cape_r6mcg0.jpg',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685613170/development/vehicules/cape%20superman/slip-superman-cape_vj1ppp.jpg',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685641536/development/vehicules/cape%20superman/cape_superman_5_tzrezk.jpg'
]

voiture_superman = Vehicule.new(
  name: 'Cape',
  description: "Vous avez toujours rêvé d’arriver à l’heure à vos rendez-vous ? D’éviter les embouteillages pour aller au bureau ? Ou bien de voler parmi les oiseaux?  J’ai ce qu’il vous faut : Ma super cape !!
  . Cette cape en soie kryptonienne vous donnera le pouvoir de voler, de résister aux balles et de combattre le crime avec une poigne d'acier. Soyez prêt à incarner la véritable essence de la justice, à sauver les innocents et à montrer au monde que vous êtes bien plus qu'un simple mortel. Attention aux fragments de kryptonite et aux méchants aux plans diaboliques
  !
  En bonus : caleçon et chaussettes assortis ;)
  ",
  price: '999',
  user_id: superman.id,
  category: Category.find_by(name: 'Multi-purpose'),
  address: 'Paris, France',
  latitude:		48.8566,
  longitude: 	2.3522
)

image_files_superman.each do |file|
  voiture_superman.pictures.attach(io: URI.open(file), filename: file)
end
voiture_superman.save

######
image_files_wonderwoman = [
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685613172/development/vehicules/invisible%20Jet%20-%20wonder%20woman/Invisible_jet_4_qx4vjj.jpg',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685613172/development/vehicules/invisible%20Jet%20-%20wonder%20woman/invisible_jet_2_yprje3.jpg',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685613172/development/vehicules/invisible%20Jet%20-%20wonder%20woman/invisible_jet_3_y32r4u.jpg',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685613171/development/vehicules/invisible%20Jet%20-%20wonder%20woman/invisible-jet_1_wg9poj.jpg',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685642312/development/vehicules/invisible%20Jet%20-%20wonder%20woman/invisible_jet_5_smfaec.jpg'
]

voiture_wonderwoman = Vehicule.new(
  name: 'Invisible Jet',
  description: "Prendre les airs dans le jet de la plus puissante des Amazones est désormais possible! Louez mon Jet invisible et découvrez la vie d'une super-héroïne. Avec cet avion invisible, vous pourrez voler incognito, vous rendre dans des lieux inaccessibles et combattre les forces du mal. Soyez prêt à utiliser votre lasso magique, à porter des bracelets indestructibles et à montrer au monde que les femmes sont aussi des super-héros! Girl Power !",
  price: '749',
  user_id: wonderwoman.id,
  category: Category.find_by(name: 'Aerial'),
  address: 'Lyon, France',
  latitude:		45.7500,
  longitude: 	4.8500
)

image_files_wonderwoman.each do |file|
  voiture_wonderwoman.pictures.attach(io: URI.open(file), filename: file)
end
voiture_wonderwoman.save

######
image_files_aladdin = [
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685392847/development/vehicules/tapis%20volant/tapis_volant_boxe_3_esz9mi.jpg',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685392848/development/vehicules/tapis%20volant/Tapis_Volant_1_hfptpt.webp',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685392848/development/vehicules/tapis%20volant/tapis_volant_2_ms7msx.jpg',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685392848/development/vehicules/tapis%20volant/tapis_volant_echecs_4_h5vtwz.png',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685642617/development/vehicules/tapis%20volant/tapis_volant_5_zavjrm.jpg'
]

voiture_aladdin = Vehicule.new(
  name: 'Tapis volant',
  description: "Louez mon tapis volant et préparez-vous à vivre des aventures digne des contes des mille et une nuits. Ce tapis volant vous emmènera à travers les cieux, vous fera survoler les déserts et vous fera découvrir des trésors cachés. Soyez prêt à rencontrer des génies, à échapper aux voleurs et à vivre des histoires d'amour inoubliables. Attention aux tempêtes de sable et aux méchants vizirs qui cherchent à vous voler votre liberté ! Peut aussi devenir votre adversaire aux échecs et à la boxe.",
  price: '259',
  user_id: aladdin.id,
  category: Category.find_by(name: 'Aerial'),
  address: 'Barcelone, Espagne',
  latitude: 41.3850,
  longitude: 2.1734
)

image_files_aladdin.each do |file|
  voiture_aladdin.pictures.attach(io: URI.open(file), filename: file)
end
voiture_aladdin.save

######
image_files_jacksparrow = [
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685643062/development/vehicules/black%20pearl%20-%20Jack%20sparrow/black_pearl_1_nzcv6n.avif',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685643062/development/vehicules/black%20pearl%20-%20Jack%20sparrow/black_pearl_2_qjuvrk.avif',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685643062/development/vehicules/black%20pearl%20-%20Jack%20sparrow/Black_Pearl_5_bxqcgd.webp',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685643062/development/vehicules/black%20pearl%20-%20Jack%20sparrow/black_pearl_4_r9enpm.jpg',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685643062/development/vehicules/black%20pearl%20-%20Jack%20sparrow/black_pearl_int_3_qitld9.jpg'
]

voiture_jacksparrow = Vehicule.new(
  name: 'Black Pearl',
  description: "Argh, mes matelots ! Louez mon magnifique Black Pearl, le navire le plus légendaire des sept mers. Avec ses voiles noires comme la nuit, sa coque solide comme le roc et son équipage... eh bien, disons qu'ils ont tous un caractère bien trempé ! Parfait pour des aventures maritimes, des chasses au trésor ou simplement pour impressionner vos amis lors des soirées costumées. Attention, toutefois, à ne pas vous retrouver à faire face à une malédiction éternelle... À vos risques et périls !",
  price: '1599',
  user_id: jacksparrow.id,
  category: Category.find_by(name: 'Maritime'),
  address: 'La pointe du Raz, France',
  latitude: 48.0396,
  longitude: -4.7359
)

image_files_jacksparrow.each do |file|
  voiture_jacksparrow.pictures.attach(io: URI.open(file), filename: file)
end
voiture_jacksparrow.save

######
image_files_batman = [
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685644639/development/vehicules/batmobile/batmobile_2_dyxtgp.jpg',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685644639/development/vehicules/batmobile/batmobile_1_dqxddr.webp',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685644639/development/vehicules/batmobile/batmobile_4_vfr2ez.webp',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685644639/development/vehicules/batmobile/batmobile_3_xqyo66.avif',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685644639/development/vehicules/batmobile/batmobile_5_ehacig.webp'
]

voiture_batman = Vehicule.new(
  name: 'Batmobile',
  description: "Êtes-vous prêt à rejoindre les ténèbres de Gotham City ? Louez mes incroyables véhicules de Batman et devenez le justicier nocturne que la ville mérite. Avec  la puissance de la Batmobile vous serez prêt à combattre le crime avec style. Faites peur aux méchants, faites des cascades spectaculaires et ressentez la puissance de la technologie de pointe. Attention aux pièges du Joker, aux poursuites infernales et aux chauves-souris un peu trop collantes !",
  price: '799',
  user_id: batman.id,
  category: Category.find_by(name: 'Land'),
  address: 'Genève, Suisse',
  latitude: 46.2043,
  longitude: 6.1431
)

image_files_batman.each do |file|
  voiture_batman.pictures.attach(io: URI.open(file), filename: file)
end
voiture_batman.save

######
image_files_naruto = [
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685613173/development/vehicules/grenouille%20Naruto/grenouille-_Naruto_zbsklh.webp',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685643146/development/vehicules/grenouille%20Naruto/gamakichi_5_jyuobd.webp',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685613171/development/vehicules/grenouille%20Naruto/Gamakichi_2_x986xa.avif',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685613171/development/vehicules/grenouille%20Naruto/Gamakichi_1_wrxyv1.jpg',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685613171/development/vehicules/grenouille%20Naruto/Gamakichi_3_corv79.webp'
]

voiture_naruto = Vehicule.new(
  name: 'Gamakichi',
  description:
  'Ready to become a legendary ninja? Rent my partner, the giant toad Gamakichi. With Gamakichi by your side, you can jump from tree to tree, use incredible combat techniques, and embark on epic adventures. Be prepared to defend your village, thwart the villains plans, and devour whole bowls of ramen noodles. Watch out for ninja traps and powerful enemies!',
  price: '799',
  user_id: naruto.id,
  category: Category.find_by(name: 'Multi-purpose'),
  address: 'Amsterdam, Pays-Bas',
  latitude: 52.3702,
  longitude: 4.8951
)

image_files_naruto.each do |file|
  voiture_naruto.pictures.attach(io: URI.open(file), filename: file)
end
voiture_naruto.save

######
image_files_ironman = [
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685613172/development/vehicules/iron%20man%20-%20armure/armure_5_nxl3im.jpg',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685613173/development/vehicules/iron%20man%20-%20armure/armure_1_h3kohl.webp',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685613172/development/vehicules/iron%20man%20-%20armure/armure_3_bkvxfp.webp',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685613172/development/vehicules/iron%20man%20-%20armure/armure_2_xfiu0m.jpg',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685613174/development/vehicules/iron%20man%20-%20armure/armure_4_nc9k4e.jpg'
]

voiture_ironman = Vehicule.new(
  name: 'Armure Iron Man',
  description: "Vous voulez vous sentir comme un véritable super-héros ? Mon incroyable armure Iron Man est faite pour vous. Avec cette armure high-tech, vous serez prêt à voler dans les cieux, à repousser les ennemis avec des rayons repulsors et à sauver le monde, une explosion à la fois. Soyez prêt à attirer l'attention, à faire tourner les têtes et à montrer à tous que vous êtes le super-héros ultime. Attention aux maléfiques qui cherchent à vous voler votre technologie et aux pannes de batterie au moment le plus crucial !",
  price: '850',
  user_id: ironman.id,
  category: Category.find_by(name: 'Multi-purpose'),
  address: 'Madrid, Espagne',
  latitude: 40.4167,
  longitude: -3.7037
)

image_files_ironman.each do |file|
  voiture_ironman.pictures.attach(io: URI.open(file), filename: file)
end
voiture_ironman.save
