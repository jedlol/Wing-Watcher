class AddUserFkColToSavedPosts < ActiveRecord::Migration[6.1]
  def change
    add_reference :saved_posts, :user, foreign_key: true
  end
end
