class Response < ApplicationRecord
  validates: :user_id, presence: true
  validates: :answer_choice_id, presence: true

  validate: sibling_responses
  def sibling_responses
    
  end

  belongs_to :answer_choice,
    primary_key: :id,
    foreign_key: :answer_choice_id,
    class_name: :AnswerChoice
  
  belongs_to :respondent,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User
end
      # t.integer :user_id, null: false
      # t.integer :answer_choice_id, null: false
