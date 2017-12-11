class CreateAccesSector < ActiveRecord::Migration[5.1]
  def change
    create_table :acces_sectors do |t|
      t.references :saccess, foreign_key: true
      t.references :sector, foreign_key: true
    end
  end
end
