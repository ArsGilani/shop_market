class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.text :description
      t.references :parent_category, foreign_key: true

      t.timestamps
    end
  end
end
