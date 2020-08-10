# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
    validates :name, presence: true

        has_many :enrollments, 
            primary_key: :id,
            foreign_key: :enrollment_id,
            class_name: :Enrollment

        
        belongs_to :enrolled_courses,
            primary_key: :id,
            foreign_key: :enrolled_id,
            class_name: :Course


end
