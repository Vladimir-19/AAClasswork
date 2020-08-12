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
require 'test_helper'

class ShortenedUrlTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
