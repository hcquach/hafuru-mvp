# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all if Rails.env.development?
Category.destroy_all if Rails.env.development?

oussama = User.create(username: "oladhari", email: "oussama@gmail.com", password:  "topsecret", password_confirmation: "topsecret")
puts
puts "User Added completed"

rey = User.create(username: "reymon29", email: "rey@gmail.com", password:  "topsecret", password_confirmation: "topsecret")
puts
puts "User Added completed"

hc = User.create(username: "hcquach", email: "hc@gmail.com", password:  "topsecret", password_confirmation: "topsecret")
puts
puts "User Added completed"

luca = User.create(username: "gianluca24", email: "luca@gmail.com", password:  "topsecret", password_confirmation: "topsecret")
puts
puts "User Added completed"

url_one = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSppXjS1d-gR8a7HVtK-1IDof0oGYTWL0-zvphvnDo0A8MEd_n2"
category_one = Category.new(name: "Bubble Bath")
category_one.remote_photo_url = url_one
category_one.icon = "fa-bath"
category_one.save
puts
puts "Category Added completed"

url_second = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSma4vlQEg10k9xmpOQlXEUjuDhthtpoVOXiIZa2O7lS8PMMLBEmw"
category_second = Category.new(name: "Chocolate")
category_second.remote_photo_url = url_second
category_second.icon = "fa-utensil-spoon"
category_second.save
puts
puts "Category Added completed"

url_third = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT32mcYiKPGUL1Aq3FqaQU4ymOjHY_V3xnG2ulNe_ZK_NcL1RFO"
category_third = Category.new(name: "Coffee")
category_third.remote_photo_url = url_third
category_third.icon = "fa-coffee"
category_third.save
puts
puts "Category Added completed"

url_fourth = "https://images.unsplash.com/photo-1480623940435-62a1340b08c6?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=58c685d203f1b520dc25905147f27691&auto=format&fit=crop&w=800&q=60"
category_fourth = Category.new(name: "Cuddle")
category_fourth.remote_photo_url = url_fourth
category_fourth.icon = "fa-diagnoses"
category_fourth.save
puts
puts "Category Added completed"

url_fifth = "https://images.unsplash.com/photo-1484853653429-b0597c723a8f?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=68ce95f0185a6478c15d61351c57f1ff&auto=format&fit=crop&w=800&q=60"
category_fifth = Category.new(name: "Date Night")
category_fifth.remote_photo_url = url_fifth
category_fifth.icon = "fa-star"
category_fifth.save
puts
puts "Category Added completed"

url_sixth = "https://images.unsplash.com/photo-1517656642936-5c2c1b70cf8a?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=2a522f15683239d6ec39c5ad271a7180&auto=format&fit=crop&w=800&q=60"
category_sixth = Category.new(name: "Daydreaming")
category_sixth.remote_photo_url = url_sixth
category_sixth.icon = "fa-comment-dots"
category_sixth.save
puts
puts "Category Added completed"

url_seventh = "https://images.unsplash.com/photo-1518957758258-cebb05097e38?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=69858a5780ae55ee1549db3a449f6bcb&auto=format&fit=crop&w=800&q=60"
category_seventh = Category.new(name: "Dream")
category_seventh.remote_photo_url = url_seventh
category_seventh.icon = "fa-cloud"
category_seventh.save
puts
puts "Category Added completed"

url_eighth = "https://images.unsplash.com/photo-1504620283337-103ddc505e91?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6fedd549bd59f11e3c5c2334049fcb6d&auto=format&fit=crop&w=800&q=60"
category_eighth = Category.new(name: "Early Mornings")
category_eighth.remote_photo_url = url_eighth
category_eighth.icon = "fa-clock"
category_eighth.save
puts
puts "Category Added completed"

url_nineth = "https://images.unsplash.com/photo-1470319149473-af271634cecf?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=4abeaa9449b661e11fc9c29cbb621b6c&auto=format&fit=crop&w=800&q=60"
category_nineth = Category.new(name: "Family")
category_nineth.remote_photo_url = url_nineth
category_nineth.icon = "fa-child"
category_nineth.save
puts
puts "Category Added completed"

url_tenth = "https://images.unsplash.com/photo-1475274110913-480c45d0e873?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=77b3d829e52c804527121b5f5f538c27&auto=format&fit=crop&w=800&q=60"
category_tenth = Category.new(name: "Fitness")
category_tenth.remote_photo_url = url_tenth
category_tenth.icon = "fa-fire"
category_tenth.save
puts
puts "Category Added completed"

url_eleven = "https://images.unsplash.com/photo-1472393365320-db77a5abbecc?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=05db3d0c50e32c534b4498476453cdd7&auto=format&fit=crop&w=800&q=60"
category_eleven = Category.new(name: "Foodie")
category_eleven.remote_photo_url = url_eleven
category_eleven.icon = "fa-utensils"
category_eleven.save
puts
puts "Category Added completed"

url_twelve = "https://images.unsplash.com/photo-1483193722442-5422d99849bc?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=b8c84fb73f30a3824d506ffdb7e241ad&auto=format&fit=crop&w=800&q=60"
category_twelve = Category.new(name: "Forgiveness")
category_twelve.remote_photo_url = url_twelve
category_twelve.icon = "fa-hands"
category_twelve.save
puts
puts "Category Added completed"

url_thirteen = "https://images.unsplash.com/photo-1516149893016-813d9a01d5d3?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a88d30411200ab836536196b28554614&auto=format&fit=crop&w=800&q=60"
category_thirteen = Category.new(name: "Friends")
category_thirteen.remote_photo_url = url_thirteen
category_thirteen.icon = "fa-users"
category_thirteen.save
puts
puts "Category Added completed"

url_fourteen = "https://images.unsplash.com/photo-1461354464878-ad92f492a5a0?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a2774121a939de0d503ec2d6d9836969&auto=format&fit=crop&w=800&q=60"
category_fourteen = Category.new(name: "Generosity")
category_fourteen.remote_photo_url = url_fourteen
category_fourteen.icon = "fa-hand-holding-heart"
category_fourteen.save
puts
puts "Category Added completed"

url_fifteen = "https://images.unsplash.com/photo-1505954880834-147b09281ffd?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=79d77cd7747a1db9f0673aac8ddab5a0&auto=format&fit=crop&w=800&q=60"
category_fifteen = Category.new(name: "Good Hair Days")
category_fifteen.remote_photo_url = url_fifteen
category_fifteen.icon = "fa-cut"
category_fifteen.save
puts
puts "Category Added completed"

url_sixteen = "https://images.unsplash.com/photo-1453142300077-2712d49294c6?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=fa66ddf4068304dc73a3013ee6190429&auto=format&fit=crop&w=800&q=60"
category_sixteen = Category.new(name: "Good night kiss")
category_sixteen.remote_photo_url = url_sixteen
category_sixteen.icon = "fa-heart"
category_sixteen.save
puts
puts "Category Added completed"

url_seventeen = "https://images.unsplash.com/photo-1522213451823-831318d2e4fc?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=b3957518451d1e739ff369ed74860975&auto=format&fit=crop&w=800&q=60"
category_seventeen = Category.new(name: "Gym")
category_seventeen.remote_photo_url = url_seventeen
category_seventeen.icon = "fa-gavel"
category_seventeen.save
puts
puts "Category Added completed"

url_eightteen = "https://images.unsplash.com/photo-1509966756634-9c23dd6e6815?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=670298bf5d0b94c29ec68504d7ba36b8&auto=format&fit=crop&w=2510&q=80"
category_eightteen = Category.new(name: "Coding (New!)")
category_eightteen.remote_photo_url = url_eightteen
category_eightteen.icon = "fa-laptop"
category_eightteen.save
puts
puts "Category Added completed"


url_nineteen = "https://images.unsplash.com/photo-1427384906349-30452365b5e8?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=1259fd925b084840234a8d8d43e842b8&auto=format&fit=crop&w=800&q=60"
category_nineteen = Category.new(name: "Health")
category_nineteen.remote_photo_url = url_nineteen
category_nineteen.icon = "fa-briefcase-medical"
category_nineteen.save
puts
puts "Category Added completed"


url_twenty = "https://images.unsplash.com/photo-1522444195799-478538b28823?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6e06b8dd96ecfa94f02fe14b90d763a0&auto=format&fit=crop&w=800&q=60"
category_twenty = Category.new(name: "Home")
category_twenty.remote_photo_url = url_twenty
category_twenty.icon = "fa-home"
category_twenty.save
puts
puts "Category Added completed"

url_twentyone = "https://images.unsplash.com/photo-1455621613471-56c7fcc60f22?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=382b937faf1b7c0a4a1637a49f7448ba&auto=format&fit=crop&w=800&q=60"
category_twentyone = Category.new(name: "Imagination")
category_twentyone.remote_photo_url = url_twentyone
category_twentyone.icon = "fa-cloud"
category_twentyone.save
puts
puts "Category Added completed"

url_twentytwo = "https://images.unsplash.com/photo-1460794418188-1bb7dba2720d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=d2bfe8be765e57893fa314522a14050c&auto=format&fit=crop&w=800&q=60"
category_twentytwo = Category.new(name: "Internet")
category_twentytwo.remote_photo_url = url_twentytwo
category_twentytwo.icon = "fa-globe"
category_twentytwo.save
puts
puts "Category Added completed"

url_twentythree = "https://images.unsplash.com/photo-1522165078649-823cf4dbaf46?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=756f069c98c96a701453b1e27630e961&auto=format&fit=crop&w=800&q=60"
category_twentythree = Category.new(name: "Job")
category_twentythree.remote_photo_url = url_twentythree
category_twentythree.icon = "fa-building"
category_twentythree.save
puts
puts "Category Added completed"

url_twentyfour = "https://images.unsplash.com/photo-1517832207067-4db24a2ae47c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=7a46f5e4a2c95b7e723224029b672385&auto=format&fit=crop&w=800&q=60"
category_twentyfour = Category.new(name: "Laughter")
category_twentyfour.remote_photo_url = url_twentyfour
category_twentyfour.icon = "fa-smile"
category_twentyfour.save
puts
puts "Category Added completed"

url_twentyfive = "https://images.unsplash.com/photo-1483412033650-1015ddeb83d1?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=78082d217e11e7ac46288b6a2624a5ba&auto=format&fit=crop&w=800&q=60"
category_twentyfive = Category.new(name: "Music")
category_twentyfive.remote_photo_url = url_twentyfive
category_twentyfive.icon = "fa-music"
category_twentyfive.save
puts
puts "Category Added completed"

url_twentysix = "https://images.unsplash.com/photo-1415298910336-daa47babb3cc?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6447f5120b6486489c001041a633feba&auto=format&fit=crop&w=800&q=60"
category_twentysix = Category.new(name: "Nature")
category_twentysix.remote_photo_url = url_twentysix
category_twentysix.icon = "fa-tree"
category_twentysix.save
puts
puts "Category Added completed"

url_twentyseven = "https://images.unsplash.com/photo-1506180823-4046e8fa6e08?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=9615c328f143b26a555d907f02448bcc&auto=format&fit=crop&w=800&q=60"
category_twentyseven = Category.new(name: "New Beginnings")
category_twentyseven.remote_photo_url = url_twentyseven
category_twentyseven.icon = "fa-street-view"
category_twentyseven.save
puts
puts "Category Added completed"

url_twentyeight = "https://images.unsplash.com/photo-1518133227682-c0e3e34de21b?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=0fce5bb07e2509d2066bd8025dad73a3&auto=format&fit=crop&w=800&q=60"
category_twentyeight = Category.new(name: "New chance")
category_twentyeight.remote_photo_url = url_twentyeight
category_twentyeight.icon = "fa-plus-circle"
category_twentyeight.save
puts
puts "Category Added completed"

url_twentynine = "https://images.unsplash.com/photo-1476490445914-cc8ed84a4277?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=07952e420365392f0ddfcec2ccf9e9fb&auto=format&fit=crop&w=800&q=60"
category_twentynine = Category.new(name: "Open minded people")
category_twentynine.remote_photo_url = url_twentynine
category_twentynine.icon = "fa-user-ninja"
category_twentynine.save
puts
puts "Category Added completed"

url_thirty = "https://images.unsplash.com/photo-1498090890888-3df9298e7b84?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=67e5dcf846d42ab23a9399dc46586b8c&auto=format&fit=crop&w=800&q=60"
category_thirty = Category.new(name: "Pain Free")
category_thirty.remote_photo_url = url_thirty
category_thirty.icon = "fa-briefcase-medical"
category_thirty.save
puts
puts "Category Added completed"

url_thirtyone = "https://images.unsplash.com/photo-1508381601116-bf2b0a707e81?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=501cd8775b8569ac90dda5aef2ad9812&auto=format&fit=crop&w=800&q=60"
category_thirtyone = Category.new(name: "Passion")
category_thirtyone.remote_photo_url = url_thirtyone
category_thirty.icon = "fa-heart"
category_thirtyone.save
puts
puts "Category Added completed"

url_thirtytwo = "https://images.unsplash.com/photo-1508938255445-041651dfe0c3?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=3ee103581488bc00b7cbccc449e71f90&auto=format&fit=crop&w=800&q=60"
category_thirtytwo = Category.new(name: "Payday")
category_thirtytwo.remote_photo_url = url_thirtytwo
category_thirtytwo.icon = "fa-money-bill-wave-alt"
category_thirtytwo.save
puts
puts "Category Added completed"

url_thirtythree = "https://images.unsplash.com/photo-1517105274840-437212774105?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=c71854679ab7b4e2addfeb0cba2c91f7&auto=format&fit=crop&w=800&q=60"
category_thirtythree = Category.new(name: "Pet")
category_thirtythree.remote_photo_url = url_thirtythree
category_thirtythree.icon = "fa-crow"
category_thirtythree.save
puts
puts "Category Added completed"

url_thirtyfour = "https://images.unsplash.com/photo-1513708598142-97d3098ca73a?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=e1342f6454de6ec03676a6b01d80b699&auto=format&fit=crop&w=800&q=60"
category_thirtyfour = Category.new(name: "Rainbows")
category_thirtyfour.remote_photo_url = url_thirtyfour
category_thirtyfour.icon = "fa-location-arrow"
category_thirtyfour.save
puts
puts "Category Added completed"

url_thirtyfive = "https://images.unsplash.com/photo-1524245365559-a858a6543626?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=12105ad94090a109cfdc884fa23b2d56&auto=format&fit=crop&w=800&q=60"
category_thirtyfive = Category.new(name: "Respect")
category_thirtyfive.remote_photo_url = url_thirtyfive
category_thirtyfive.icon = "fa-user-friends"
category_thirtyfive.save
puts
puts "Category Added completed"

url_thirtysix = "https://images.unsplash.com/photo-1519667250223-d397baa95b44?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=234afba946dd4673ec6a1fccb6198b04&auto=format&fit=crop&w=800&q=60"
category_thirtysix = Category.new(name: "Self Motivation")
category_thirtysix.remote_photo_url = url_thirtysix
category_thirtysix.icon = "fa-greater-than"
category_thirtysix.save
puts
puts "Category Added completed"

url_thirtyseven = "https://images.unsplash.com/photo-1486946093500-76bb0e3ddef2?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=0d972e73c5b15344ebcc751604a23bed&auto=format&fit=crop&w=800&q=60"
category_thirtyseven = Category.new(name: "Sleep")
category_thirtyseven.remote_photo_url = url_thirtyseven
category_thirtyseven.icon = "fa-bed"
category_thirtyseven.save
puts
puts "Category Added completed"

url_thirtyeight = "https://images.unsplash.com/photo-1520491286939-1680f46efe91?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=78d4252e291af7e68c536595275eda47&auto=format&fit=crop&w=800&q=60"
category_thirtyeight = Category.new(name: "Snow Days")
category_thirtyeight.remote_photo_url = url_thirtyeight
category_thirtyeight.icon = "fa-snowflake"
category_thirtyeight.save
puts
puts "Category Added completed"

url_thirtynine = "https://images.unsplash.com/photo-1521079299535-94854b0a7b27?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=129caae32dfb4a70a3c319e4642d7e62&auto=format&fit=crop&w=700&q=60"
category_thirtynine = Category.new(name: "Spell Check")
category_thirtynine.remote_photo_url = url_thirtynine
category_thirtynine.icon = "fa-paint-brush"
category_thirtynine.save
puts
puts "Category Added completed"

url_fourty = "https://images.unsplash.com/photo-1460687521562-9eead9abe9e8?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=ce13ad4458f8fbbaf04380446cf6745d&auto=format&fit=crop&w=700&q=60"
category_fourty = Category.new(name: "Strength")
category_fourty.remote_photo_url = url_fourty
category_fourty.icon = "fa-people-carry"
category_fourty.save
puts
puts "Category Added completed"

url_fourtyone = "https://images.unsplash.com/photo-1504786625401-a57ce58a5b18?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=0ebac02d789f1ef8fb43cba7656f7e50&auto=format&fit=crop&w=700&q=60"
category_fourtyone = Category.new(name: "Sunday Fun Day")
category_fourtyone.remote_photo_url = url_fourtyone
category_fourtyone.icon = "fa-hand-spock"
category_fourtyone.save
puts
puts "Category Added completed"

url_fourtytwo = "https://images.unsplash.com/photo-1516102202033-e1c97c6ef9f8?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=26b9ba37683018472747f45ffb8b27bb&auto=format&fit=crop&w=800&q=60"
category_fourtytwo = Category.new(name: "Sunset")
category_fourtytwo.remote_photo_url = url_fourtytwo
category_fourtytwo.icon = "fa-sun"
category_fourtytwo.save
puts
puts "Category Added completed"

url_fourtythree = "https://images.unsplash.com/photo-1523253112282-26697ead8398?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=34dca042bd04113d68ec9f4b72c421af&auto=format&fit=crop&w=700&q=60"
category_fourtythree = Category.new(name: "Swag")
category_fourtythree.remote_photo_url = url_fourtythree
category_fourtythree.icon = "fa-user-secret"
category_fourtythree.save
puts
puts "Category Added completed"

url_fourtyfour = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRL1Le6c_SdN2xnZ3P5rFevOgQ923b-LTHVeFLQEo9nOF4QjNk1"
category_fourtyfour = Category.new(name: "TBT")
category_fourtyfour.remote_photo_url = url_fourtyfour
category_fourtyfour.icon = "fa-redo"
category_fourtyfour.save
puts
puts "Category Added completed"

url_fourtyfive = "https://images.unsplash.com/photo-1486611367184-17759508999c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=07cc7d266925582796550ebfec1137b5&auto=format&fit=crop&w=700&q=60"
category_fourtyfive = Category.new(name: "Technology")
category_fourtyfive.remote_photo_url = url_fourtyfive
category_fourtyfive.icon = "fa-tablet-alt"
category_fourtyfive.save
puts
puts "Category Added completed"

url_fourtysix = "https://nozbe.com/images/tgif2.png"
category_fourtysix = Category.new(name: "TGIF")
category_fourtysix.remote_photo_url = url_fourtysix
category_fourtysix.icon = "fa-glass-martini"
category_fourtysix.save
puts
puts "Category Added completed"

url_fourtyseven = "https://images.unsplash.com/photo-1525613168655-9a78036d9321?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=5897d6887e9874a8912f53b06ca65bee&auto=format&fit=crop&w=700&q=60"
category_fourtyseven = Category.new(name: "Transportation")
category_fourtyseven.remote_photo_url = url_fourtyseven
category_fourtyseven.icon = "fa-train"
category_fourtyseven.save
puts
puts "Category Added completed"

url_fourtyeight = "https://images.unsplash.com/photo-1422809623770-a1487918d542?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=5278a0562c13232f28b6eb09938a6862&auto=format&fit=crop&w=700&q=60"
category_fourtyeight = Category.new(name: "Wedding")
category_fourtyeight.remote_photo_url = url_fourtyeight
category_fourtyeight.icon = "fa-user-tie"
category_fourtyeight.save
puts
puts "Category Added completed"
