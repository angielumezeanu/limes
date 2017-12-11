class AddCategoryToSector < ActiveRecord::Migration[5.1]
  def change
    add_column :sectors, :scategory_id, :integer
  end
end
