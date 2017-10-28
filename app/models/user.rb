class User < ApplicationRecord
  has_many :pictures, dependent: :destroy
  has_many :comments, dependent: :destroy
  before_save :capitalize_name
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def capitalize_name
    self.name = self.name.split.collect(&:capitalize).join(' ') if self.name && !self.name.blank?
  end
  def user?
    !self.admin?
    #code
  end
end
