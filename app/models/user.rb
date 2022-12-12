# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  description            :string
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  image                  :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  username               :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
class User < ApplicationRecord
  mount_uploader :image, AvatarUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many(
    :posts,
    class_name: 'Post', 
    foreign_key: 'user_id',
    inverse_of: :user,
    dependent: :destroy
  )

  has_many(
    :comments,
    class_name: 'Comment', 
    foreign_key: 'user_id',
    inverse_of: :user,
    dependent: :destroy
  )

  has_many :likes
  
  has_many :dislikes

  has_many(
    :saved_posts,
    class_name: 'SavedPost',
    foreign_key: 'user_id',
    inverse_of: :user,
    dependent: :destroy
  )

  has_many(
    :saved_posts,
    class_name: 'SavedPost',
    foreign_key: 'save_user_id',
    inverse_of: :save_user,
    dependent: :destroy
  )

  
end