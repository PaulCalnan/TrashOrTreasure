User.destroy_all
u1 = User.create :name => 'Jonesy', :email => 'jonesy@ga.co', :password => 'chicken'
u2 = User.create :name => 'Craigsy',:email => 'craigsy@ga.co', :password => 'chicken'
puts "#{ User.count } users"

Post.destroy_all
p1 = Post.create :title => 'Post 1', :description => 'Post 1 description', :image => 'pic1_udfng8.jpg'
p2 = Post.create :title => 'Post 2', :description => 'Post 2 description', :image => 'pic2_nykzlq.webp'

Comment.destroy_all
c1 = Comment.create :remark => "This is comment one"
c2 = Comment.create :remark => "This is comment two"

#Associations

puts "Posts and Users"
u1.posts << p2
u2.posts << p1

puts "Posts and Comments"
u1.comments << c1
u2.comments << c2

puts "Comments and Posts"
p1.comments << c2
p2.comments << c1
