class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.text :details

      t.references :category, index: true

      t.timestamps null: false
    end
  end
end
