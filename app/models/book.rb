class Book < ApplicationRecord
  belongs_to :user
  has_many :favorite, dependent: :destroy
  
  def favorite_by?(user)
    favorite.exists?(user_id: user.id)
  end
  
  validates :title, presence: true
  validates :body, presence: true, length: { maximum: 200 }
end
