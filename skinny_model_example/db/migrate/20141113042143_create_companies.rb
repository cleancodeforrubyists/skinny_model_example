class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.integer :employee_count

      t.timestamps
    end
  end
end
