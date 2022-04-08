class Post < ApplicationRecord
  validates :title, :body, presence: true
  validates :title, length: { minimum: 3 }
  validates :title, uniqueness: true
end
