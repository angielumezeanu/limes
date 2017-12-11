class AddStereoToCoordinate < ActiveRecord::Migration[5.1]
  def change
    add_column :coordinates, :xstereo, :decimal, :precision=>15, :scale=>10
    add_column :coordinates, :ystereo, :decimal, :precision=>15, :scale=>10
    add_column :coordinates, :perimeter, :string
  end
end
