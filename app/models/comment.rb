class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates :body, presence: true, allow_blank: false, length: { minimum: 5, maximum: 100,
                                                                 too_long: '100 characters in body is the maximum allowed.' }
end
