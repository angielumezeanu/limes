class CreateIntegrities < ActiveRecord::Migration[5.1]
  def change
    create_table :integrities do |t|
      t.string :degree
      t.string :description

      t.timestamps
    end
  end
end
