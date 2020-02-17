class AddCategoryToNews < ActiveRecord::Migration[6.0]
  def change
    change_table :news do |t|
      t.belongs_to :category
    end
  end
end
