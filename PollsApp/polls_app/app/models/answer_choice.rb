class AnswerChoice < ApplicationRecord
  validates: :text, presence: true
  validates: :question_id, presence: true

  belongs_to :question,
    primary_key: :id,
    foreign_key: :question_id,
    class_name: :Question

  has_many :responses,
    primary_key: :id,
    foreign_key: :answer_choice_id,
    class_name: :Response
end
      # t.string :text, null: false
      # t.integer :question_id, null: false
