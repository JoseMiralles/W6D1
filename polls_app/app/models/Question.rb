class Question < ApplicationRecord

    belongs_to :poll,
        foreign_key: :poll_id,
        class_name: :Poll

    has_many :answer_choices,
        foreign_key: :question_id,
        class_name: :AnswerChoice

    has_many :responses,
        through: :answer_choices,
        source: :responses

    def results
        count = Hash.new{|h, k| h[k] = 0}

        self.responses.each {|r| count[r.answer_choice.text] += 1  }

        count
    end

end