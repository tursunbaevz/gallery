class User < ApplicationRecord
	 has_many :posts
	 has_many :comments, dependent: :destroy
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :name, presence: true, length: {maximum: 50}
end
