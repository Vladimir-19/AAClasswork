# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  email_id   :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord 
    validates :email_id, presence: true, uniqueness: true

end
