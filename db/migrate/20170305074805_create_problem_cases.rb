class CreateProblemCases < ActiveRecord::Migration[5.0]
  def change
    create_table :problem_cases do |t|
      t.references :case_type, foreign_key: true
      t.string :description
      t.string :address
      t.float :latitude
      t.float :longitude
      t.datetime :time

      t.timestamps
    end
  end
end
