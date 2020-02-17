class CreateNews < ActiveRecord::Migration[6.0]
  def change
    create_table :news do |t|
      t.string :title
      t.string :head_line
      t.string :original_image
      t.string :thumbnail_image
      t.text :body

      t.timestamps
    end
  end
end
