class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.date :hire_date
      t.references :department, null: false, foreign_key: true
      t.references :job_position, null: false, foreign_key: true

      t.timestamps
    end
  end
end
