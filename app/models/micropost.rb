class Micropost < ApplicationRecord
  belongs_to :user
  validates :content, presence: true, length: { maximum: 255 }
  has_many :favorites
  has_many :likes, through: :favorites, source: :user
  
  def like_user(user_id)
   likes.find_by(user_id: user_id)
  end
  
end
