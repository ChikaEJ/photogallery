class Picture < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  mount_uploader :image, ImageUploader

  def total_raiting
    raitings = 0
    comments.each do |comment|
      raitings += comment.raiting
    end
    raitings
  end
end
