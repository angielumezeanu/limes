class CreateSectors < ActiveRecord::Migration[5.1]
  def change
    create_table :sectors do |t|
      t.string :locality
      t.string :village
      t.references :county, foreign_key: true
      t.string :type
      t.string :name
      t.string :point
      t.string :length
      t.string :tower
      t.string :institution
      t.string :lmi
      t.string :map_code
      t.references :coordinate, foreign_key: true
      t.string :d_length
      t.string :d_width
      t.string :d_height
      t.string :d_o
      t.string :d_type
      t.string :area
      t.text :description
      t.string :soil_type
      t.string :chronology
      t.string :preservation
      t.references :component, foreign_key: true
      t.string :form
      t.string :location
      t.string :access
      t.string :risk
      t.text :archaeology
      t.string :pat_value
      t.text :remark
      t.string :polygon
      t.string :author

      t.timestamps
    end
  end
end
