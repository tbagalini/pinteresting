class CreateInventories < ActiveRecord::Migration[5.0]
  def change
    create_table :inventories do |t|
      t.text :description
      t.string :part_number
      t.string :alternate_part_number
      t.string :condition_code
      t.integer :qty
      t.string :mfg_code
      t.string :serial_number
      t.text :part_comments
      t.decimal :price

      t.timestamps
    end
  end
end
