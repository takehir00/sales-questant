class Question < ApplicationRecord
  belongs_to :user
  has_many :answers
  has_many :categories_questions
  has_many :categories, through: :categories_questions
end
