class AddByMapToProblemCase < ActiveRecord::Migration[5.0]
  def change
    add_column :problem_cases, :by_map, :boolean
  end
end
