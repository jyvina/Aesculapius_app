class CreateVideos < ActiveRecord::Migration[5.1]
  def change
    create_table :videos do |t|
      t.string :title
      t.text :contents
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
