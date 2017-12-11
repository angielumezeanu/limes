class CreateCoordinates < ActiveRecord::Migration[5.1]
  def change
    create_table :coordinates do |t|
      t.decimal :x, :precision=>15, :scale=>10
      t.decimal :y, :precision=>15, :scale=>10
      t.decimal :height
      t.string :ctype

      t.timestamps
    end
  end
end
