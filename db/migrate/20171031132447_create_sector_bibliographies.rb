class CreateSectorBibliographies < ActiveRecord::Migration[5.1]
  def change
    create_table :sector_bibliographies do |t|
      t.references :sector, foreign_key: true
      t.references :bibliography, foreign_key: true
      t.string :page

      t.timestamps
    end
  end
end
