class ChangeCoordinateTypeToInteger < ActiveRecord::Migration[5.1]
  def change
    change_column :coordinates, :ydegree, :integer
    change_column :coordinates, :ymin, :integer
    change_column :coordinates, :xmin, :integer
  end
end
