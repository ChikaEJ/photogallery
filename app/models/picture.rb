class Picture < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  mount_uploader :image, ImageUploader

  def average_rating
    if self.comments.size > 0
      self.comments.average(:raiting)
    else
      'undefined'
    end
  end
end
