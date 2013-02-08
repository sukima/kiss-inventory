class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :identifier
      t.text :description
      t.integer :quantity

      t.timestamps
    end
    add_index :items, :identifier, :unique => true
  end
end
