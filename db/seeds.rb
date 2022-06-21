puts "🌱 Seeding sneakers..."
s1 = Sneaker.create(name: "Air Jordan OG I Black/Red " , price: 3500, year: 1985, image: "https://cdn.shopify.com/s/files/1/0027/3262/1894/products/image_0b221161-0717-4518-abf9-14235a891d31_1024x1024@2x.heic?v=1652309842", condition: "Used")
s2 = Sneaker.create(name: "Air Jordan OG II White/Red", price: 3200, year: 1987, image: "https://img.mensxp.com/media/content/2016/Jul/most-valuable-sneakers-in-the-world7-1468240127.jpg?w=652&h=400", condition:"Used")
s3 = Sneaker.create(name:"Air Jordan OG III Black/Cement Grey", price: 5000, year: 1988, image:"https://i.ebayimg.com/images/g/S0IAAOSw~UJgKe24/s-l500.jpg", condition:"Used")
s4 = Sneaker.create(name:"Air Jordan OG IV White/Fire Red - Black", price: 2500, year: 1989, image: "https://cdn.flightclub.com/750/TEMPLATE/222399/1.jpg", condition:"Used")
s5 = Sneaker.create(name:"Air Jordan OG V White/Grape Ice - New Emerald", price: 2800, year: 1990, image: "https://cdn.flightclub.com/750/TEMPLATE/010189/1.jpg", condition:"Used")
puts "✅ Done seeding sneakers!"
puts "🌱 Seeding users..."
u1 = User.create(name: "John Wells")
u2 = User.create(name: "Kim Perke")
u3 = User.create(name: "James Mcdowell")
u4 = User.create(name: "Tim Doodle")
u5 = User.create(name: "Jahaun Freeman")
u6 = User.create(name: "Ashton Nelson")
u7 = User.create(name: "Jason Murphy")
u8 = User.create(name: "Tina Sanchez")
u9 = User.create(name: "Damon Blue")

puts "✅ Done seeding users!"
puts "🌱 Seeding reviews..."
Review.create(comment:"THE FIRST AND THE BEST AIR JORDAN EVERY RELEASED!", sneaker_id: s1.id, user_id: u1.id)
Review.create(comment:"I LOVE THESE. BRING BACK MY CHILDHOOD. MY FATHER FIRST GIFTED ME THIS IN 1985! BEEN LOOKING FOR THEM FOR YEARS!", sneaker_id: s1.id, user_id: u3.id)
Review.create(comment:"I REMEMBER WATCHING HIM WEAR THESE DURING THE GAME. GOT MY FIRST PAIR, THOUGHT I COULD FLY!", sneaker_id: s1.id, user_id: u5.id)
Review.create(comment:"THESE ARE F**** FIRE! SUPER RARE", sneaker_id: s2.id, user_id: u2.id)
Review.create(comment:"BESIDES THE SOLE CRACKING, I CAN’T STOP STARING", sneaker_id: s2.id, user_id: u4.id)
Review.create(comment:"NOT TO COMFY, BUT DAMN FIRE KICK", sneaker_id: s2.id, user_id: u6.id)
Review.create(comment:"OH BABY! THESE GOT MY HEART! SUPER COMFY AND STYLISH", sneaker_id: s3.id, user_id: u7.id)
Review.create(comment:"I WASN’T EVEN BORN YET, SO TO FIND THESE MINT, MINE ALL MINE!!!!", sneaker_id: s3.id, user_id: u8.id)
Review.create(comment:"dope.", sneaker_id: s3.id, user_id: u9.id)
Review.create(comment:"There was one scratch on one of the shoes other than that I love them!", sneaker_id: s4.id, user_id: u2.id)
Review.create(comment:"I USED TO WATCH THIS MAN FLY IN THESE KICKS. I NEED EM. GOTTA HAVE EM", sneaker_id: s4.id, user_id: u3.id)
Review.create(comment:"MY BOYFRIEND LOVED THESE FOR HIS BIRTHDAY!", sneaker_id: s4.id, user_id: u4.id)
Review.create(comment:"FRESH PRINCE OF BEL AIR VIBES!", sneaker_id: s5.id, user_id: u7.id)
Review.create(comment:"SUMMER KICKS ON DECK!", sneaker_id: s5.id, user_id: u5.id)
Review.create(comment:"LEMME BRING OUT MY FLIGHT TO ROCK THESE BAD BOYS!", sneaker_id: s5.id, user_id: u1.id)
puts "✅ Done seeding reviews!"
