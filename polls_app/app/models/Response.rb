class Response < ApplicationRecord

    belongs_to :answer_choice,
        foreign_key: :answer_choice_id,
        class_name: :AnswerChoice

    belongs_to :respondent,
        foreign_key: :user_id,
        class_name: :User

    has_one :question,
        through: :answer_choice,
        source: :question

    validate:not_duplicate_response

    # Check if the respondend already responded to this question.
    def not_duplicate_response
        if respondent_already_answered?
            errors[:base] << "This person already answered this question."
        end
    end

    private

    # Checks if this respondent already answered.
    def respondent_already_answered?
        sibling_responses.any? {|res| res.user_id == self.user_id }
    end

    # Gets the responses to the same question, excluding self.
    def sibling_responses
        self.question.responses.where.not(id: self.id)
    end

end