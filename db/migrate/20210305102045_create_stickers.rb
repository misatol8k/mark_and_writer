class CreateStickers < ActiveRecord::Migration[5.2]
  def change
    create_table :stickers do |t|
      t.string :name
      t.text :image

      t.timestamps
    end
  end
end
