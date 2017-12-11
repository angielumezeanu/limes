class CreateLandSector < ActiveRecord::Migration[5.1]
  def change
    create_table :land_sectors do |t|
      t.references :land, foreign_key: true
      t.references :sector, foreign_key: true
    end
  end
end
