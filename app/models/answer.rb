class Answer < ApplicationRecord
  belongs_to :question
  has_many :comments, dependent: :destroy 
  validates :posted_by, presence: true, length: {minimum: 3}
  validates :body, presence: true, length: {minimum: 3}
end
