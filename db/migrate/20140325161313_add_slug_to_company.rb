class AddSlugToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :slug, :string
    add_index :companies, :slug
  end
end
