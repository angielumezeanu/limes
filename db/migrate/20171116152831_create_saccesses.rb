class CreateSaccesses < ActiveRecord::Migration[5.1]
  def change
    create_table :saccesses do |t|
      t.string :name

      t.timestamps
    end
  end
end
