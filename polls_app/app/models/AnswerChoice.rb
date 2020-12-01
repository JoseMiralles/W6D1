class AnswerChoice < ApplicationRecord

    belongs_to: question,
        foreign_key: :question_id,
        class_name: :Question

    has_many: responses,
        foreign_key: :answer_choice_id,
        class_name: Response

end