class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.references :expense_sheet
      t.date :date
      t.string :category
      t.string :employee_name
      t.string :employee_address
      t.text :description
      t.string :tax_name
      t.decimal :pre_tax_amount, :precision => 8, :scale => 2
      t.decimal :tax_amount, :precision => 8, :scale => 2
      t.timestamps null: false
    end
  end
end
