# == Schema Information
#
# Table name: comments
#
#  id          :bigint           not null, primary key
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  post_id     :bigint           not null
#  user_id     :bigint           not null
#
# Indexes
#
#  index_comments_on_post_id              (post_id)
#  index_comments_on_user_id              (user_id)
#  index_comments_on_user_id_and_post_id  (user_id,post_id) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (post_id => posts.id)
#  fk_rails_...  (user_id => users.id)
#
require "test_helper"

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
#       test "comments are valid" do 
#     comments.each do |t|
#       assert t.valid?, comment.errors.full_message.inspect

#   end
# # end
# end
