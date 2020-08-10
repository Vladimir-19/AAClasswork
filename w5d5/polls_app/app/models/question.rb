class Question < ApplicationRecord
    validates :text, presence: true
    validates :poll_id, presence: true
end
