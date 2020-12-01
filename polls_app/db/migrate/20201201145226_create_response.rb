class CreateResponse < ActiveRecord::Migration[5.2]
  def change
    create_table :responses do |t|
      t.integer :answer_choice_id, null: false
      t.integer :question_id, null:false
    end
    add_index :responses, :answer_choice_id
    add_index :responses, :question_id
  end
end
