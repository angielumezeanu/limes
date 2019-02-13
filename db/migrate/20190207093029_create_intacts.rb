class CreateIntacts < ActiveRecord::Migration[5.1]
  def change
    create_table :intacts do |t|
      t.string :degree
      t.string :description

      t.timestamps
    end
  end
end
