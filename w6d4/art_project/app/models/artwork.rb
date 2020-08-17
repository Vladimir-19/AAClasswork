# == Schema Information
#
# Table name: artworks
#
#  id        :bigint           not null, primary key
#  title     :string           not null
#  image_url :string           not null
#  artist_id :integer          not null
#
class Artwork < ApplicationRecord
    
    validates :artist_id, uniqueness: {scope: :title}
    validates :image_url, presence: true, uniqueness: true

    belongs_to :artist,
        primary_key: :id,
        foreign_key: :artist_id,
        class_name: :User
    
    has_many :shares,
        primary_key: :id,
        foreign_key: :artwork_id,
        class_name: :ArtworkShare
        
    has_many :shared_users,
        through: :shares,
        source: :viewer

    has_many :comments, dependent: :destroy,
        primary_key: :id,
        foreign_key: :artwork_id,
        class_name: :Comment

  

end


'''
need something like:




:title, :artist_id, :image_url
'''
