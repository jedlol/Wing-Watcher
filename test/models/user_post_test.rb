# == Schema Information
#
# Table name: user_posts
#
#  id          :bigint           not null, primary key
#  date        :date
#  description :string
#  image       :string
#  location    :string
#  name        :string
#  price       :string
#  profile_pic :string
#  rating      :string
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class UserPostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
