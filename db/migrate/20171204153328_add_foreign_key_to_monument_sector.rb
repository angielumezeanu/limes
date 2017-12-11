class AddForeignKeyToMonumentSector < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :monument_sectors, :monuments, on_delete: :restrict
    add_foreign_key :monument_sectors, :sectors, on_delete: :restrict
  end
end
