class AddPreservationToSector < ActiveRecord::Migration[5.1]
  def change
    add_column :sectors, :preservation_id, :integer
  end
end
