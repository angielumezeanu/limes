class ChangeXdegreeTypeToInteger < ActiveRecord::Migration[5.1]
  def change
    change_column :coordinates, :xdegree, :integer
  end
end
