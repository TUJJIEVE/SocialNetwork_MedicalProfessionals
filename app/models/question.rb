class Question < ApplicationRecord
    attr_accessor :date, :time
    validates :title, presence: true, length: {minimum: 5}
    has_many :answers, dependent: :destroy
    has_many :q_comments, dependent: :destroy
    has_many :q_votes, dependent: :destroy
    
end
