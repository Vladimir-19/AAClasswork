class VisitsModel < ApplicationRecord
    validations :visitor, :shortened_url, precence: true
    
    belongs_to :visitors,
    foreign_key: :user_id,
    class_name: :user

    #:shortened_url,

    def self.record_visit!(user, shortened_url)
    Visit.create!(user_id: user.id, shortened_url_id: shortened_url.id)
    end
        
end
