class Book < ApplicationRecord
  belongs_to :user
  validates :title, :author_name, :published_year, :genre, :description, presence: true
end
