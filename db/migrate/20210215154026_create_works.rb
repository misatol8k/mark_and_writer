class CreateWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :works do |t|
      t.string :title
      t.text :content, null: false
      t.boolean :status, default: false

      t.timestamps
    end
  end
end
