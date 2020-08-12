# == Schema Information
#
# Table name: shortened_urls
#
#  id           :bigint           not null, primary key
#  long_urs     :string           not null
#  short_url    :string           not null
#  sunmitted_id :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class ShortenedUrl < ApplicationRecord
    validates :long_urs, presence: true
    validates :short_url, uniqueness: true, presence: true

    belongs_to :a_user, 
    foreign_key: :submitter_id, 
    class_name: :User

    has_manu :visitors,
    foreign_key: :visitors,
    class_name: :VisitsModel

    def self.random_code
        rand_str = SecureRandom::urlsafe_base64(16)
        return rand_str unless SecureRandom::exists?(rand_str)
    end

    def num_clicks
        visits.count
    end
#num_uniques
#num_recent_uniques
end
