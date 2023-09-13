class CreateLeaves < ActiveRecord::Migration[7.0]
  def change
    create_table :leaves do |t|
      t.date :start_date
      t.date :end_date
      t.string :leave_type
      t.string :status
      t.references :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
