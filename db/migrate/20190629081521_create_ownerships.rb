class CreateOwnerships < ActiveRecord::Migration[5.0]
  def change
    create_table :ownerships do |t|
      t.string :type
      t.references :user, foreign_key: true
      t.references :item, foreign_key: true

      t.timestamps
      #同一Userが同一Itemに対して複数回「この商品を持っている」をできないようにしている。
      t.index [:user_id, :item_id , :type], unique: true
    end
  end
end
