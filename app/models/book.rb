class Book < ApplicationRecord
  belongs_to :user
  has_many :rents, dependent: :destroy
  validates :title, :author_name, :published_year, :genre, :description, :price, presence: true
end
