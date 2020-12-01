class Question < ApplicationRecord

    belongs_to: poll,
        foreign_key: :poll_id,
        class_name: Poll

    has_many: answers,
        foreign_key: :question_id,
        class_name: :AnswerChoice

    has_one: response,
        foreign_key: :question_id,
        class_name: :Response

end