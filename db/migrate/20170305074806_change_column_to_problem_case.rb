class ChangeColumnToProblemCase < ActiveRecord::Migration[5.0]
  def change
    change_column :problem_cases, :description, :text
  end
end
