# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   movies = Movie.create([
#   { name: 'Star Wars' }, 
#   { name: 'Lord of the Rings' }
# ])
#   Character.create(name: 'Luke', movie_id: movies.first)



User.destroy_all
Artwork.destroy_all
ArtworkShare.destroy_all


users = User.create([
    { username: 'Star Wars' }, 
    { username: 'Lord of the Rings' },
    { username: 'coolguy57' },
    { username: 'coolgal58' },
  ])

art = Artwork.create([
  {title: 'Happy dog', image_url: 'bappydogdf.com', artist_id: users.first.id},
  {title: 'Sad dog', image_url: 'Saefnefdddogg.com', artist_id: users.second.id},
  {title: 'Sad dog', image_url: 'Next.com', artist_id: users.third.id},
  {title: 'Neutral Cat', image_url: 'fsdlfd.com', artist_id: users.fourth.id}
]) 

shere = ArtworkShare.create([
  {artwork_id: art.first.id, viewer_id: users.first.id},
  {artwork_id: art.second.id, viewer_id: users.second.id}, #######weird
  {artwork_id: art.third.id, viewer_id: users.third.id}
])

# OH NO I LOST YOU!!! it was a great pleasure working with y
# thank 
# you for today!! great work!

# SAME to you, dont forget to send me a git link/zip file
# i will <# :>)
comments = Comment.create([
  {body: 'this art sucks!', user_id: users.fourth.id, artwork_id: artworks.second.id}





])

=begin
create_table :artworks do |t|
    t.string :title, null: false
    t.string :image_url, null: false
    t.integer :artist_id, null: false
  end
  add_index :artworks, [:title, :artist_id], unique: true
end
end 

create_table :artwork_shares do |t|
    t.integer :artwork_id, null: false 
    t.integer :viewer_id, null: false 
  end
  add_index :artwork_shares, [:artwork_id, :viewer_id], unique: true  
end

=end