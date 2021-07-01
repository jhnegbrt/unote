class Note < ApplicationRecord

  validates :body, length: {minimum: 1}
  validates :author_id, presence: true
  validates :title, length: {maximum: 30, allow_nil: true}
  
end