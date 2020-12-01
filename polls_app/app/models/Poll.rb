class Poll < ApplicationRecord

    belongs_to: author,
        foreign_key: :author_id,
        class_name: :User

    has_many: questions,
        foreign_key: poll_id,
        class_name: Question

end