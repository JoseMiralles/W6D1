class Response < ApplicationRecord

    belongs_to: answer,
        foreign_key: :answer_choice_id,
        class_name: :AnswerChoice

    belongs_to: respondent,
        foreign_key: :user_id,
        class_name: :User

end