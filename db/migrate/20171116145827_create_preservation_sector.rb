class CreatePreservationSector < ActiveRecord::Migration[5.1]
  def change
    create_table :preservation_sectors do |t|
      t.references :preservation, foreign_key: true
      t.references :sector, foreign_key: true
    end
  end
end
