class CreateReactions < ActiveRecord::Migration[5.2]
  def change
    create_table :reactions do |t|
      t.references :work, foreign_key: true
      t.references :user, foreign_key: true
      t.references :sticker, foreign_key: true

      t.timestamps
    end
  end
end
