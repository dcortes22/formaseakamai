class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :name
      t.string :first_last_name
      t.string :second_last_name
      t.integer :employee_code

      t.timestamps
    end
  end
end
