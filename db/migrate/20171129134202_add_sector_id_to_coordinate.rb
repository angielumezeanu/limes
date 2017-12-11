class AddSectorIdToCoordinate < ActiveRecord::Migration[5.1]
  def change
    add_column :coordinates, :sector_id, :integer, :after=>:id
  end
end
