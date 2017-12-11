class AddOtherFieldsToSector < ActiveRecord::Migration[5.1]
  def change
    add_column :sectors, :national, :string
    add_column :sectors, :urbanism, :string
    add_column :sectors, :other, :string
    add_column :sectors, :agriculture, :string
    add_column :sectors, :forest, :string
  end
end
