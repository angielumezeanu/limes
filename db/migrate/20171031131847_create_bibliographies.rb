class CreateBibliographies < ActiveRecord::Migration[5.1]
  def change
    create_table :bibliographies do |t|
      t.string :abbreviation
      t.string :title

      t.timestamps
    end
  end
end
