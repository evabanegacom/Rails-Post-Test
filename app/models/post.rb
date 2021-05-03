class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  validates :title, presence: true, allow_blank: false, length: { minimum: 5, maximum: 15,
                                                                  too_long: '10 characters in body is the maximum allowed.' }
  validates :body, presence: true, allow_blank: false, length: { minimum: 5, maximum: 50,
                                                                 too_long: '50 characters in body is the maximum allowed.' }
end
