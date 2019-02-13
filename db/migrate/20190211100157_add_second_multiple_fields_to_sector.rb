class AddSecondMultipleFieldsToSector < ActiveRecord::Migration[5.1]
  def change
    add_column :sectors, :mon_frequency, :string
    add_column :sectors, :mon_records, :string
    add_reference :sectors, :whole, foreign_key: true
    add_reference :sectors, :intact, foreign_key: true
    add_reference :sectors, :integrity, foreign_key: true
    add_reference :sectors, :threat, foreign_key: true
  end
end
