class CreateSalaries < ActiveRecord::Migration[7.0]
  def change
    create_table :salaries do |t|
      t.references :employee, null: false, foreign_key: true
      t.decimal :amount
      t.date :effective_date
      t.string :frequency

      t.timestamps
    end
  end
end
