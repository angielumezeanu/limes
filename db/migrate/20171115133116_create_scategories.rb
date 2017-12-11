class CreateScategories < ActiveRecord::Migration[5.1]
  def change
    create_table :scategories do |t|
      t.string :name

      t.timestamps
    end
  end
end
