class CreateMonuments < ActiveRecord::Migration[5.1]
  def change
    create_table :monuments do |t|
      t.string :name

      t.timestamps
    end
  end
end
