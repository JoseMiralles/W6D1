class Response < ApplicationRecord

    belongs_to: answer,
        foreign_key: :answer_choice_id,
        class_name: :AnswerChoice

    belongs_to: question,
        foreign_key: :question_id,
        class_name: :Question

    belongs_to: respondent,
        foreign_key: :user_id,
        class_name: :User

end