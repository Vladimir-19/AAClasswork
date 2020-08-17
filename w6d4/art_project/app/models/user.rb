# == Schema Information
#
# Table name: users
#
#  id       :bigint           not null, primary key
#  username :string           not null
#
class User < ApplicationRecord 
    validates :username, uniqueness: true, presence: true 
 
    has_many :pieces,
    primary_key: :id,
    foreign_key: :artist_id,
    class_name: :Artwork

    has_many :shares,
        primary_key: :id,
        foreign_key: :viewer_id,
        class_name: :ArtworkShare

    has_many :shared_artworks,
        through: :shares,
        source: :artwork

    has_many :comments, dependent: :destroy,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: :Comment


end



'''  has_many :shares,
primary_key: :id,
foreign_key: :viewer_id,
class_name: :ArtworkShare


has_many :shared_artworks:
through: :shares
'''