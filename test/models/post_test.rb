# == Schema Information
#
# Table name: posts
#
#  id           :bigint           not null, primary key
#  area         :string
#  date         :date
#  dish         :string
#  image        :string
#  name         :string
#  price        :float
#  rating       :float
#  restaurant   :string
#  review       :string
#  sauce        :string
#  waiting_time :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :bigint
#
# Indexes
#
#  index_posts_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
<<<<<<< HEAD
#  image        :string
=======
>>>>>>> origin/Jacque_signin_newpost_newcomment
#  name         :string
#  price        :float
#  rating       :float
#  restaurant   :string
#  review       :string
#  sauce        :string
#  waiting_time :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
<<<<<<< HEAD
#  user_id      :bigint
#
# Indexes
#
#  index_posts_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
=======
>>>>>>> origin/Jacque_signin_newpost_newcomment
#
require "test_helper"

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "posts are valid" do 
      posts.each do |p|
      assert p.valid?, post.errors.full_message.inspect
    end
end
