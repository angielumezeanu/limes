class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.references :sector, foreign_key: true
      t.string :imag_type
      t.string :description

      t.timestamps
    end
  end
end
