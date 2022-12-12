# == Schema Information
#
# Table name: saved_posts
#
#  id           :bigint           not null, primary key
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  post_id      :bigint
#  save_user_id :bigint
#  user_id      :bigint
#
# Indexes
#
#  index_saved_posts_on_post_id       (post_id)
#  index_saved_posts_on_save_user_id  (save_user_id)
#  index_saved_posts_on_user_id       (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (post_id => posts.id)
#  fk_rails_...  (save_user_id => users.id)
#  fk_rails_...  (user_id => users.id)
#
require "test_helper"

class SavedPostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
