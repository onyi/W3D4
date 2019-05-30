  # t.integer :user_id, null: false
  # t.integer :answer_choice_id, null: false
class Response < ApplicationRecord
  belongs_to :answer_choice,
    primary_key: :id,
    foreign_key: :answer_choice_id,
    class_name: :AnswerChoice
  
  belongs_to :respondent,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User

end
