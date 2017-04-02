class AddUserToProblemCase < ActiveRecord::Migration[5.0]
  def change
    add_reference :problem_cases, :user, foreign_key: true
  end
end
