class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :title
      t.text :details
      t.references :category, foreign_key: true
      t.decimal :price

      t.timestamps
    end
  end
end
