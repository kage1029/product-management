class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :price
      t.string :image
      t.string :detail

      t.timestamps
    end
  end
end
