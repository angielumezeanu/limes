class CreateMonumentSector < ActiveRecord::Migration[5.1]
  def change
    create_table :monument_sectors do |t|
      t.references :monument, foreign_key: true
      t.references :sector, foreign_key: true
    end
  end
end
