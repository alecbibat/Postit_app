class Post < ActiveRecord::Base
  belongs_to :user
  has_many :post_categories
  has_many :comments
  has_many :categories, through: :post_categories

  validates :title, presence: true
  validates :url, presence: true
  validates :description, presence: true
end