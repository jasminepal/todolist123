class AddUserIdToTodoings < ActiveRecord::Migration[7.0]
  def change
    add_reference :todoings, :user, foreign_key: true
  end
end
