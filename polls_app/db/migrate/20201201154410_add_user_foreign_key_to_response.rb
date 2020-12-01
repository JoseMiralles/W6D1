class AddUserForeignKeyToResponse < ActiveRecord::Migration[5.2]
  def change
    add_column :responses, :user_id, :integer, null: false
  end
end
