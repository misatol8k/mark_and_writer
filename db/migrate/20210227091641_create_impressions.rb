class CreateImpressions < ActiveRecord::Migration[5.2]
  def change
    create_table :impressions do |t|
      t.references :work, foreign_key: true
      t.text :comment

      t.timestamps
    end
  end
end
