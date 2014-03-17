class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name, null: false

      t.timestamps
    end
    
    add_index :companies, :name
  end
end
