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
class Post < ApplicationRecord
	mount_uploader :image, AvatarUploader

	belongs_to(
		:user,
		class_name: 'User', 
		foreign_key: 'user_id',
		inverse_of: :posts
	)

	has_many(
		:comments,
		class_name: 'Comment',
		foreign_key: 'post_id',
		inverse_of: :post,
		dependent: :destroy
	)

	has_many(
		:saved_posts,
		class_name: 'SavedPost',
		foreign_key: 'post_id',
		inverse_of: :post,
		dependent: :destroy
	)
	validates :rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }

  has_many :likes
  has_many :dislikes


end