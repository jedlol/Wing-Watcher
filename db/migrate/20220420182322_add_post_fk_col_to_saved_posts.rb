class AddPostFkColToSavedPosts < ActiveRecord::Migration[6.1]
  def change
    add_reference :saved_posts, :post, foreign_key: true
  end
end
