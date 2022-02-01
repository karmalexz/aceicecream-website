print "creating products..."
Product.destroy_all

p1 = Product.create! name: " Peachy Oolong", price: 15.00, stock: 50, description: "Dong Ding Oolong Tea with Shizuoka 🍑, we call it the best combo for ice cream. ", image: "/images/peach.JPG"

p2 = Product.create! name: " Taro", price: 15.00, stock: 50, description: "Real taro, no BS.", image: "/images/taro.JPG"
# p2.avatar.attach(io: File.open(Rails.root.join('app/assets/images/taro.JPG')),filename: 'taro.JPG')

p3 = Product.create! name: " Thai Milk Tea", price: 14.00, stock: 50, description: "Popular cold tea drink in Southeast Asia, we transfer this exotic drink to ice cream.", image: "/images/thai.JPG"
# p3.avatar.attach(io: File.open(Rails.root.join('app/assets/images/thai.JPG')),filename: 'thai.JPG')

p4 = Product.create! name: "Mango Pomelo", price: 15.00, stock: 50, description: "We transform the famous Chinese dessert to ice cream, 30% mango puree, you can taste the difference", image: "/images/mango.JPG"
# p4.avatar.attach(io: File.open(Rails.root.join('app/assets/images/mango.JPG')),filename: 'mango.JPG')

p5 = Product.create! name: " Jasmine Lychee", price: 15.00, stock: 50, description: "Creamy, sweet, flvourful. ", image: "/images/lychee.jpg"
# p5.avatar.attach(io: File.open(Rails.root.join('app/assets/images/lychee.jpg')),filename: 'lychee.jpg')

p6 = Product.create! name: " Passionfruit Sorbet", price: 13.00, stock: 50, description: "Summer's best friend must be a scoop of passionfruit sorbet. ", image: "/images/passionfruit.jpg"
# p6.avatar.attach(io: File.open(Rails.root.join('app/assets/images/passionfruit.jpg')),filename: 'passionfruit.jpg')

p7 = Product.create! name: "Uji Matcha ", price: 15.00, stock: 50, description: "We used the ceremony grade matcha powder from Japan, the pleasant green colour says everything. ", image: "/images/matcha.jpg"
# p7.avatar.attach(io: File.open(Rails.root.join('app/assets/images/matcha.jpg')),filename: 'matcha.jpg')

puts "created #{Product.count} ice creams"

###################################################
print "Creating Specials....."
Special.destroy_all
s1 = Special.create! name: "Taste All", price: 81.69, stock: 10
s2 = Special.create! name: "Tea lover", price: 50.00, stock: 10

puts "created #{Special.count} specials"
s1.products << p1 << p2 << p3 << p4 << p5 << p6 << p7
s2.products << p1 << p3 << p5 << p7

puts "Special '#{s1.name}' has ice creams: #{s1.products.pluck(:name).join(", ")} "
puts "Ice cream '#{p5.name}' in the special: '#{p5.specials.pluck(:name).join(", ")}'"
###################################################
print "Creating Users..."
User.destroy_all

u1 = User.create! first_name: "Alex", last_name: "Zhang", address:"629 Gardeners Road, Mascot", phone:"0422363720", email:"hellozhangdi1994@gmail.com", password:'alexzhang123'

u2 = User.create! first_name: "Eric", last_name: "Wang", address:"650 Gardeners Road, Mascot", phone:"0422456789", email:"ericwang@gmail.com", password:'ericwang123'

u3 = User.create! first_name: "Shelley", last_name: "Beaton", address:"123 Church Road, Alexandria", phone:"0412356745", email:"shelly1@gmail.com", password:'shelly987'

puts "created #{User.count} users."