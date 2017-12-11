class AddForeignKeyToCoordinate < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :coordinates, :sectors, on_delete: :restrict
  end
end
