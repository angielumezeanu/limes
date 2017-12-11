class AddDegreeToCoordinate < ActiveRecord::Migration[5.1]
  def change
    add_column :coordinates, :xdegree, :integer
    add_column :coordinates, :xmin, :integer
    add_column :coordinates, :xsec, :integer
    add_column :coordinates, :ydegree, :integer
    add_column :coordinates, :ymin, :integer
    add_column :coordinates, :ysec, :integer
  end
end
