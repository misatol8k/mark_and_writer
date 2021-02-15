class CreateWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :works do |t|
      t.string :title
      t.text :content, null: false
      t.boolean :status, null: false, false
      t.text :image

      t.timestamps
    end
  end
end
