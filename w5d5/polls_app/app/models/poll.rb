class Poll < ApplicationRecord
    validates :author_id, presnece: true
    validates :title, presence: true, uniqueness: true

    belongs_to :author_id,
        primary_key: :id,
        foreign_key: :response_id
        class_name: :Poll
end
