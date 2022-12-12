class AddSaveUserFkColToSavedPosts < ActiveRecord::Migration[6.1]
  def change
    add_reference :saved_posts, :save_user, foreign_key: { to_table: 'users' }
  end
end
